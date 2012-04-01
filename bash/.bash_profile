# -*- mode: shell-script; -*-

echo "<init START:$HOSTNAME>"

# loading common and host specific environments
. ~/.shells/sbin/env-load.sh

# bash specific rc file
echo "setting bash shell environment..."
. ~/.bashrc

echo "<init COMPLETE>"
