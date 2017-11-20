#!/bin/bash
[[ "$1" != "" ]] && prefix="_$1" 

source ~/.$1/config/colors

dst=~/.vim$prefix 

echo -e "let \$VIMROOT='$dst'" > $dst/config/.VIMROOT

if [[ "" == "$prefix" ]]; then
	ln -s $dst/config/vimrc ~/.vimrc
	ln -s $dst/config/gvimrc ~/.gvimrc
else
	echo -e  "${YELLOW}PLEASE ADD THIS TO .bashrc"
	echo -e  "${BLUE}alias vim='vim -p -i $dst/.viminfo -u $dst/config/vimrc'"
	echo -e  "alias vi='vim'${RESET}"
fi
