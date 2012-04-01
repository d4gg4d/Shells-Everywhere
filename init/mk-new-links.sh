#! /bin/sh

# runned from root of this project.

## make soft links of default configuration files to corresponding home folder

echo "creating new links for $1 files to your home folder..."
for i in $(ls -A $1); do
    if [ -h ~/$i ]; then
    	rm -v ~/$i;
    elif [ -f ~/$i ]; then
	echo "found old file for $i, backuping...";
    	mv -v ~/$i ~/$i.orig;
    fi
    ln -sv $PWD/$1/$i ~/$i;
done
