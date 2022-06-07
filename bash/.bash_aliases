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
alias backup-my-org-files="tar hcvzf org-backup-`date --rfc-3339=date`.tar.gz ~/org/"

alias audio-meeting='
pactl set-default-sink alsa_output.usb-R__DE_Microphones_R__DE_NT-USB_Mini_E1714C25-00.analog-stereo
pactl set-default-source alsa_input.usb-R__DE_Microphones_R__DE_NT-USB_Mini_E1714C25-00.mono-fallback
pactl set-default-source alsa_input.usb-R__DE_Microphones_R__DE_NT-USB_Mini_E1714C25-00.multichannel-input
'

alias audio-speakers='pactl set-default-sink alsa_output.pci-0000_0c_00.4.analog-stereo'
