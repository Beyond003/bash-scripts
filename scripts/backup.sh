#!/bin/bash

# Author: Abdelrahman Elsayed
# Date Created: 26 Jul 2025
# Last Modified: 26 Jul 2025
# Description: Backup_files and saves them in an tar_file
# Usage: ./backup

tar -cvf ~/bash_course/my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar ~/* 2>dev/null

exit 0
