# -*- mode: shell-script; -*-

echo "setting common variables and utils..."

setenv VISUAL "`which emacsclient` --alternate-editor="
setenv EDITOR `which emacs`
setenv ALTERNATE_EDITOR `which vim`
setenv EMAIL your@email.com

