# -*- mode: shell-script; -*-

## utility aliases
alias natu='nautilus $PWD'

alias h='history'
alias j='jobs -l'

## tex related cleaner aliases   
alias texclean='rm -f *.toc *.aux *.log *.cp *.fn *.tp *.vr *.pg *.ky'
alias clean='echo -n "Really clean this directory?";
          read yorn;
          if test "$yorn" = "y"; then
             rm -f \#* *~ .*~ *.bak .*.bak  *.tmp .*.tmp core a.out;
             echo "Cleaned.";
          else
             echo "Not cleaned.";
          fi'

alias mci="mvn clean install"
alias less='less -R'
