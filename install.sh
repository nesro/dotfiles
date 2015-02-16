#!/bin/bash

backup_and_link()
{
	file=$1

	if [[ -f ~/$file ]]; then
		echo "$file already exists. creating a backup"
		mv ~/$file{,_backup_$(date +"%y_%m_%d")}
	fi

	ln -s $(readlink -f $file) ~/$file
}

backup_and_link ".vimrc"

