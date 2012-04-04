#!/bin/sh

# bootstraping repo to home folder
./init/bootstrap.sh

# setting shells
echo "setting bash shell..."
./init/mk-new-links.sh bash

echo "setting ksh shell..."
./init/mk-new-links.sh ksh

echo "setting tcsh shell..."
./init/mk-new-links.sh tcsh