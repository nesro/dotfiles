#/bin/bash

backup_and_link()
{
	file=$1

	if [[ -f ~/$file ]]; then
		mv ~/$file{,_backup}
	fi

	ln -s $(readlink -f $file) ~/$file

}

backup_and_link ".tmux.conf"

