#! /bin/sh

# runned from root of this project.

echo "Bootstrapping shell configurations..."

if [ -h ~/.shells ]; then
    rm -v .shells;
elif [ -d ~/.shells ]; then
    echo "found directory from bootsrap target, backuping it..."
    mv -v ~/.shells ~/.shells.org
fi
ln -sv $PWD ~/.shells;

echo "done";