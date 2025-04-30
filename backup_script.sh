#!/bin/bash

<<INFO 
This shell script is to take periodic backups
INFO


#$1 is tha argument we will pass while executing script

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d_%H:%M:%S')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null


aws s3 sync $dest s3://tws-backup-demo

echo "Backup completed"


