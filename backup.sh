#!/bin/bash

<<help

This is a shell script to take backup and also can be used with cron
help

source_dir="/home/ubuntu/scripts"
destination_dir="/home/ubuntu/backups"

function create_backup {

    timestamp=$(date '+%y-%m-%d-%H-%M')

    backup_dir="${destination_dir}/backup_${timestamp}"

    zip -r "${backup_dir}.zip" "${source_dir}"
    echo "backup completed"

}

create_backup $source_dir $destination_dir



