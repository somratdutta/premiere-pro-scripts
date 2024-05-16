#!/bin/bash

# Prompt the user for the project number
read -p "Enter the project number (e.g., #069): " project_number

# Define the source and destination paths
backup_base="/Volumes/2TBHDD/# Projects/# YouTube Backups [HDD]"
originals_base="/Volumes/1TBSSD/# Projects/# YouTube Originals"

# Find the original project folder by the project number
original_project_folder=$(find "${originals_base}" -type d -name "${project_number}*" | head -n 1)
if [[ -z "$original_project_folder" ]]; then
    echo "Original project folder not found."
    exit 1
fi

# Extract the full name of the project folder
project_folder_name=$(basename "$original_project_folder")

# Find the copied project folder
copied_folder=$(find "${backup_base}" -type d -name "Copied_${project_number}_*" | head -n 1)
if [[ -z "$copied_folder" ]]; then
    echo "Copied project folder not found."
    read -p "Please enter the exact path of the copied project folder: " copied_folder
    if [[ ! -d "$copied_folder" ]]; then
        echo "No valid directory provided. Exiting."
        exit 1
    fi
fi

# Rename the copied project folder to match the original project folder name
new_copied_folder="${backup_base}/${project_folder_name}"
sudo mv "$copied_folder" "$new_copied_folder"
copied_folder="$new_copied_folder"

# Create necessary directories in the new copied folder
sudo mkdir -p "${copied_folder}/01 Project Files"
sudo mkdir -p "${copied_folder}/02 Thumbnail"
sudo mkdir -p "${copied_folder}/03 Export"

# Move all files to '01 Project Files', but keep the .prproj file outside
find "${copied_folder}" -maxdepth 1 -type f ! -name '*.prproj' -exec sudo mv {} "${copied_folder}/01 Project Files" \;

# Copy thumbnail files
sudo cp -r "${original_project_folder}/09 Thumbnail/." "${copied_folder}/02 Thumbnail/"

# Try to find the 4k export file in possible directories
export_dirs=("10 Export" "Exports" "Export")
for dir in "${export_dirs[@]}"; do
    export_file=$(find "${original_project_folder}/${dir}" -type f -name 'Final_4k_SD*' | head -n 1)
    if [[ -f "$export_file" ]]; then
        sudo cp "$export_file" "${copied_folder}/03 Export/"
        echo "Export file copied successfully."
        break
    fi
done

if [[ ! -f "$export_file" ]]; then
    echo "Export file not found in expected directories."
fi

echo "Backup process completed successfully for project: $project_folder_name."