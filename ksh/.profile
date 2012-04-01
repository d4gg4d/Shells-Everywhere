# -*- mode: shell-script; -*-

echo "<init START:`hostname -s`>"

# loading common and host specific environments
. ~/.shells/sbin/env-load.sh

# bash specific rc file
echo "setting ksh shell environment..."
. ~/.kshrc

echo "<init COMPLETE>"
