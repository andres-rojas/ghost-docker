#!/usr/bin/env bash

FILENAME="ghost-backup-$(date +%Y-%m-%d)"

echo "Move restore backups out of the way..."

mv --verbose /var/lib/ghost/.bak /backup/.bak
echo

echo "Create backup archive..."
cd /var/lib
tar --verbose --create --file "/backup/${FILENAME}.tar" ghost
echo
cd /backup
xz --verbose -6e ${FILENAME}.tar
echo

echo "Put back the restore backups..."
mv --verbose /backup/.bak /var/lib/ghost/.bak
echo
