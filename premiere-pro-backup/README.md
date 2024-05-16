
# Premiere Pro Project Backup Script

## Overview

This Bash script automates the process of backing up Adobe Premiere Pro project folders. It locates original project folders based on a given project number, checks for existing backups, and if not found, prompts for the backup location. The script ensures that the backup folder structure matches the original and handles file transfers to designated subdirectories.

## Requirements

- Bash shell (typically available on macOS and Linux)
- Accessible storage volumes at specific paths (can be adjusted in the script):
    - Original projects: `/Volumes/1TBSSD/# Projects/# YouTube Originals`
    - Backup location: `/Volumes/2TBHDD/# Projects/# YouTube Backups [HDD]`

## Usage

To use this script, follow these steps:

1. **Ensure Execution Permissions:**
   Ensure the script is executable. If not, run the following command in your terminal:
   ```bash
   chmod +x backup_project.sh
   ```

2. **Run the Script:**
   Execute the script by navigating to its directory and running:
   ```bash
   ./backup_project.sh
   ```

3. **Provide Input When Prompted:**
   - **Project Number**: Input the project number as labeled in your project directory (e.g., `#069`).

### Example of Running the Script:
```bash
./backup_project.sh
Enter the project number (e.g., #069): #081
Original project folder not found.
Please enter the exact path of the copied project folder: /path/to/copied/folder
Backup process completed successfully for project: Your_Project_Name
```

## Features

- **Search and Validate**: Locates original and backup project folders based on user input.
- **Dynamic Backup Handling**: Prompts for backup location if the backup is not initially found.
- **Structured Backup Creation**: Ensures that the backup structure mirrors the original project folder, including subdirectories for project files, thumbnails, and exports.
- **File Management**: Handles the movement and copying of files to maintain organization and integrity of the backup.

## Important Notes

- The script relies on specific naming conventions and directory structures. Ensure that your directories are structured as expected by the script or modify the script to suit your environment.
- The script uses `sudo` for certain operations, which may require administrative privileges.

## License

This project is open-sourced under the MIT License. See the LICENSE file for more details.

