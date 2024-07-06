#!/bin/bash

# Check if the user provided a filename
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <name-of-text-file>"
    exit 1
fi

# Input file
INPUT_FILE=$1
# Log file
LOG_FILE="/var/log/user_management.log"
# Password file
PASSWORD_FILE="/var/secure/user_passwords.csv"

# Ensure log and password files exist and are writable
touch $LOG_FILE
chmod 600 $LOG_FILE

mkdir -p /var/secure
touch $PASSWORD_FILE
chmod 600 $PASSWORD_FILE

# Function to generate a random password
generate_password() {
    echo $(openssl rand -base64 12)
}

# Function to create user and groups
create_user_and_groups() {
    local username=$1
    local groups=$2
    local password=$(generate_password)

    # Create a personal group for the user
    if ! getent group $username > /dev/null 2>&1; then
        groupadd $username
        echo "Group $username created" >> $LOG_FILE
    else
        echo "Group $username already exists" >> $LOG_FILE
    fi

    # Create additional groups
    IFS=',' read -ra ADDR <<< "$groups"
    for group in "${ADDR[@]}"; do
        group=$(echo $group | xargs) # trim whitespaces
        if ! getent group $group > /dev/null 2>&1; then
            groupadd $group
            echo "Group $group created" >> $LOG_FILE
        else
            echo "Group $group already exists" >> $LOG_FILE
        fi

    done

    # Create the user
    if ! id -u $username > /dev/null 2>&1; then
        useradd -m -g $username -G $groups -s /bin/bash $username
        echo "$username:$password" | chpasswd
        echo "User $username created with home directory and added to groups $groups" >> $LOG_FILE

        # Store the password securely
        echo "$username:$password" >> $PASSWORD_FILE
    else
        echo "User $username already exists" >> $LOG_FILE
    fi
}

# Read the input file and process each line
while IFS=';' read -r username groups; do
    username=$(echo $username | xargs) # trim whitespaces
    groups=$(echo $groups | xargs) # trim whitespaces
    create_user_and_groups $username $groups
done < $INPUT_FILE

echo "User creation process completed. Check $LOG_FILE for details and $PASSWORD_FILE for passwords."
