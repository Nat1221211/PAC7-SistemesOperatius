#!/bin/bash

set -e

DIR=$(dirname "$(readlink -f "$0")")
cd "$DIR"

tar -cpzf ./Backups/backup.tar.gz --one-file-system /etc

echo "Backup Realized at $(date '+%Y-%m-%d %H:%M:%S')" >> ./backup.log

OWNER=$(stat -c '%U' "$DIR")

su -l "$OWNER" -c "cd $DIR; git add -A; git commit -m 'Daily Backup'; git push"
