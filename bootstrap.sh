#!/bin/bash
[[ "$1" != "" ]] && prefix="_$1" 

src=$(cd $0/..;pwd)
dst=$(cd ~;pwd)/.vim$prefix
echo "$src -> $dst"
[[ "$src" != "$dst" ]] && ln -s $src/ $dst
echo -e "let \$VIMROOT='$dst'" > $dst/config/.VIMROOT

if [[ "" == "$prefix" ]]; then
	ln -s $dst/config/vimrc ~/.vimrc
	ln -s $dst/config/gvimrc ~/.gvimrc
else
	echo "PLEASE ADD THIS TO .bashrc"
	echo "alias vim='vim -p -i $dst/.viminfo -u $dst/config/vimrc'"
	echo "alias vi='vim'"
fi
