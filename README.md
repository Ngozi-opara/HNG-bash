
# User and Group Management Script

This script is part of Stage One of the HNG internship program. It automates the creation of users and groups on a Linux system, ensuring proper logging and secure password management.

## Overview

The script performs the following tasks:
1. Creates users and groups as specified in an input text file.
2. Ensures each user has a personal group.
3. Adds users to additional groups.
4. Generates random passwords for new users.
5. Updates passwords and group memberships for existing users.
6. Logs all actions and securely stores passwords.

## Usage


./user_management.sh <name-of-text-file>
<name-of-text-file>: A semicolon-separated file where each line contains a username and a comma-separated list of groups.


## Input File Format
The input text file should have the following format:
```username1;group1,group2,group3
username2;group4,group5


## Log and Password Files
Log File: /var/log/user_management.log - Contains logs of all actions performed by the script.
Password File: /var/secure/user_passwords.csv - Stores generated passwords securely.


## Permissions
Ensure the script has execute permissions:
```chmod +x user_management.sh
Example
To run the script with an input file named users.txt:

./user_management.sh users.txt


### Article Reference
For a detailed explanation of the script and its components, refer to the article: How to Create Linux Users and Groups with Bash: A Beginner's Guide

Notes
Ensure you have the necessary permissions to create users and groups on your system.
The script should be run with root privileges.


This script is a task for Stage One of the HNG internship program. It aims to provide hands-on experience with Bash scripting for user and group management on Linux systems.
# User and Group Management Script

This script is part of Stage One of the HNG internship program. It automates the creation of users and groups on a Linux system, ensuring proper logging and secure password management.

## Overview

The script performs the following tasks:
1. Creates users and groups as specified in an input text file.
2. Ensures each user has a personal group.
3. Adds users to additional groups.
4. Generates random passwords for new users.
5. Updates passwords and group memberships for existing users.
6. Logs all actions and securely stores passwords.

## Usage


./user_management.sh <name-of-text-file>
<name-of-text-file>: A semicolon-separated file where each line contains a username and a comma-separated list of groups.


## Input File Format
The input text file should have the following format:
```username1;group1,group2,group3
username2;group4,group5


## Log and Password Files
Log File: /var/log/user_management.log - Contains logs of all actions performed by the script.
Password File: /var/secure/user_passwords.csv - Stores generated passwords securely.


## Permissions
Ensure the script has execute permissions:
```chmod +x user_management.sh
Example
To run the script with an input file named users.txt:

./user_management.sh users.txt


Article Reference
For a detailed explanation of the script and its components, refer to the article: How to Create Linux Users and Groups with Bash: A Beginner's Guide

Notes
Ensure you have the necessary permissions to create users and groups on your system.
The script should be run with root privileges.


This script is a task for Stage One of the HNG internship program. It aims to provide hands-on experience with Bash scripting for user and group management on Linux systems.
# User and Group Management Script

This script is part of Stage One of the HNG internship program. It automates the creation of users and groups on a Linux system, ensuring proper logging and secure password management.

## Overview

The script performs the following tasks:
1. Creates users and groups as specified in an input text file.
2. Ensures each user has a personal group.
3. Adds users to additional groups.
4. Generates random passwords for new users.
5. Updates passwords and group memberships for existing users.
6. Logs all actions and securely stores passwords.

## Usage


./user_management.sh <name-of-text-file>
<name-of-text-file>: A semicolon-separated file where each line contains a username and a comma-separated list of groups.


## Input File Format
The input text file should have the following format:
```username1;group1,group2,group3
username2;group4,group5


## Log and Password Files
Log File: /var/log/user_management.log - Contains logs of all actions performed by the script.
Password File: /var/secure/user_passwords.csv - Stores generated passwords securely.


## Permissions
Ensure the script has execute permissions:
```chmod +x user_management.sh
Example
To run the script with an input file named users.txt:

./user_management.sh users.txt


Article Reference
For a detailed explanation of the script and its components, refer to the article: [How to Create Linux Users and Groups with Bash: A Beginner's Guide] (https://ngozihannahopara.hashnode.dev/how-to-create-linux-users-and-groups-with-bash-a-beginners-guide)

Notes
Ensure you have the necessary permissions to create users and groups on your system.
The script should be run with root privileges.


This script is a task for Stage One of the HNG internship program. It aims to provide hands-on experience with Bash scripting for user and group management on Linux systems.
