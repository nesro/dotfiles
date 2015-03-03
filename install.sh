#!/bin/bash

backup_and_link()
{
	file=$1

	if [[ -f ~/$file ]]; then
		echo "$file already exists. creating a backup"
		mv ~/$file{,_backup_$(date +"%y_%m_%d")}
	fi

	if ln -s $(readlink -f $file) ~/$file; then
		echo "$file: OK"
	else
		echo "$file: FAIL"
	fi
}

backup_and_link ".vimrc"
backup_and_link ".screenrc"
backup_and_link ".xmodmap"

