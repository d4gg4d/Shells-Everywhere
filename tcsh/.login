# -*- mode: shell-script; -*-

echo "<init START:`hostname -s`>"

alias . "source"
alias export "setenv"

# loading common and host specific environments
. ~/.shells/sbin/env-load.tcsh

# bash specific rc file
echo "setting tcsh shell environment..."
. ~/.tcshrc

echo "<init COMPLETE>"
