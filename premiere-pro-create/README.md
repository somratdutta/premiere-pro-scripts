


# Premiere Pro Project Setup Script

## Overview

This Bash script simplifies the creation of new Adobe Premiere Pro projects by automatically copying a predefined project template into a new project directory, which is named based on user input. Additionally, the script allows for selective inclusion of specific footage directories, catering to the unique needs of each project.

## Requirements

- Bash shell (typically available on macOS and Linux)
- The project template should be located at: `/Volumes/1TBSSD/# Projects/# YouTube Originals/#999 Template`
- The storage volume `/Volumes/1TBSSD` must be accessible and writable.

## Usage

To use this script, follow these steps:

1. **Ensure Execution Permissions:**
   Ensure the script is executable. If not, run the following command in your terminal:
   ```bash
   chmod +x create_project.sh
   ```

2. **Run the Script:**
   Execute the script by navigating to its directory and running:
   ```bash
   ./create_project.sh
   ```

3. **Provide Input When Prompted:**
   - **Project Code**: Input a numerical code for your project (e.g., `083`).
   - **Project Title**: Input a descriptive title for your project (e.g., `How to Edit`).
   - **Footage Directories**: Respond to prompts to include or exclude specific footage types (A7III, Screen, iPad, iPhone, GoPro).

### Example of Running the Script:
```bash
./create_project.sh
Enter the project code (e.g., 083): 083
Enter the project title (e.g., How to Edit): How to Edit
Include Footage from A7III? (y/n): y
Include Screen Footage? (y/n): n
Include iPad Footage? (y/n): y
Include iPhone Footage? (y/n): n
Include GoPro Footage? (y/n): y
Project directory created successfully.
```

## Features

- **Automated Directory Creation**: Sets up a new project directory with a structure based on a master template.
- **Selective Footage Inclusion**: Users can choose which specific types of footage directories to include in the new project, ensuring flexibility.
- **Consistency and Efficiency**: Utilizes a template for consistent project setups and increases efficiency in project creation.

## Important Notes

- Ensure that the paths and directory names used in the script match those on your system.
- The script assumes a specific directory structure and naming convention; modifications might be necessary if your environment differs.

## License

This project is open-sourced under the MIT License. See the LICENSE file for more details.
