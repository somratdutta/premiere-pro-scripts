
# Premiere Pro Scripts

## Overview

This repository contains a collection of scripts designed to automate and enhance workflows related to Adobe Premiere Pro projects. These scripts aim to streamline operations such as backups and project setup, making it easier and more efficient to manage video editing tasks. Each script is designed with practicality in mind, focusing on reducing the manual steps involved in managing large or multiple video projects.

## Repository Structure

The repository is organized into subdirectories, each housing scripts related to specific functionalities:

- **premiere-pro-backup**: Scripts for backing up Premiere Pro projects.
- **premiere-pro-create**: Scripts for setting up new Premiere Pro projects.

## Scripts

### 1. Premiere Pro Backup

Located in the `premiere-pro-backup` directory, the [`premiere_pro_backup.sh`](premiere-pro-backup/premiere_pro_backup.sh) script automates the process of backing up Premiere Pro project files to designated storage locations. This script ensures that your valuable project data is safeguarded against data loss and facilitates easy recovery and management of project versions.

**Features**:
- Automatically locates and backs up project directories based on user input.
- Offers options to specify backup locations if the default is not found.
- Ensures that backups maintain the same organizational structure as the original projects.

### 2. Premiere Pro Create

Found in the `premiere-pro-create` directory, the [`premiere_pro_create.sh`](premiere-pro-create/premiere_pro_create.sh) script facilitates the creation of new project structures, ensuring that all new projects adhere to a standardized format. This script simplifies the process of setting up new projects, allowing editors to focus more on creative aspects.

**Features**:
- Copies a predefined project template to create a new project structure.
- Allows selective inclusion of specific types of footage directories.
- Automatically renames project files to match new project codes and titles.

## Getting Started

To get started with these scripts, follow the steps below:

1. **Clone the Repository**:
   Clone this repository to your local machine using the following command:
   ```bash
   git clone https://github.com/somratdutta/premiere-pro-scripts.git
   cd premiere-pro-scripts
Navigate to a Script Directory:
Choose a script to run and navigate to its directory. For example:

cd premiere-pro-backup
Run the Script:
Execute the script by following the detailed instructions in the README file located in each script's directory.

License
This project is licensed under the MIT License - see the LICENSE file for details.
