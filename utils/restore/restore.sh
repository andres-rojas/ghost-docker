#!/usr/bin/env bash

cd /backup

FILENAME=`ls -t ghost-backup-*.tar.xz | head -n 1 | sed 's/\./ /g' | awk '{print $1}'` 
echo "Restoring from ${FILENAME}.tar.xz..."
echo

echo "Extracting..."
unxz --verbose --keep ${FILENAME}.tar.xz
tar --verbose --extract --file ${FILENAME}.tar
echo

echo "Copying files..."
pushd ghost > /dev/null
  cp --verbose --recursive --force . /var/lib/ghost
popd > /dev/null
echo

echo "Cleaning up..."
rm --verbose --recursive --force ghost
rm --verbose ${FILENAME}.tar
