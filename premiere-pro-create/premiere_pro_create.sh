#!/bin/bash

# Set the template directory
template_dir="/Volumes/1TBSSD/# Projects/# YouTube Originals/#999 Template"

# Ask for user input
read -p "Enter the project code (e.g., 083): " project_code
read -p "Enter the project title (e.g., How to Edit): " project_title

# Set the new project directory path
new_project_dir="/Volumes/1TBSSD/# Projects/# YouTube Originals/#${project_code} ${project_title}"

# Copy the template directory to a new location with the new project name
cp -r "$template_dir" "$new_project_dir"

# Rename the Master project file
mv "${new_project_dir}/01 Project Files/Master.prproj" "${new_project_dir}/01 Project Files/#${project_code} Master.prproj"

# Ask for each footage directory individually
echo "Do you need specific footage directories?"
read -p "Include Footage from A7III? (y/n): " include_a7iii
read -p "Include Screen Footage? (y/n): " include_screen
read -p "Include iPad Footage? (y/n): " include_ipad
read -p "Include iPhone Footage? (y/n): " include_iphone
read -p "Include GoPro Footage? (y/n): " include_gopro

# Conditional removal of unwanted directories
[[ "$include_a7iii" != "y" ]] && rm -r "${new_project_dir}/03 Footage_A7III"
[[ "$include_screen" != "y" ]] && rm -r "${new_project_dir}/04 Footage_Screen"
[[ "$include_ipad" != "y" ]] && rm -r "${new_project_dir}/05 Footage_iPad"
[[ "$include_iphone" != "y" ]] && rm -r "${new_project_dir}/07 Footage_iPhone"
[[ "$include_gopro" != "y" ]] && rm -r "${new_project_dir}/08 Footage_GPro"

echo "Project directory created successfully."