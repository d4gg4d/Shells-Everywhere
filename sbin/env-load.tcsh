## initialization
set root=~/.shells;
set env=$root/env;

## common environment source file
if (-f $env/common.env) then
    source $env/common-env.tcsh
endif

## host specific component and aliases
set hostname=`hostname -s`;
if (-d $env/$hostname) then
    #echo "$env/$hostname"
    foreach src (`find "$env/$hostname" \( -name \*-env.tcsh -o -name aliases \)`)
	source "$src"
    end
else
    echo "no configurations for $hostname..."
endif
