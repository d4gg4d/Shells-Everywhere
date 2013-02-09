
## initialization
root=~/.shells/;
env=$root/env/;

## common environment source file
if [ -f $env/common.env ]; then
    . $env/common.env
fi

## host specific component and aliases
hostname=`hostname -s`;
if [ -d $env/$hostname ]; then
    for src in $(find $env/$hostname \( -name '*.env' -o -name aliases \) ); do
	. $src
    done
else
    echo "no configurations for $HOSTNAME..."
fi
