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

alias ansible-vault-elisa-edit="ansible-vault edit --vault-password-file=~/wrk/elisa/dl_vault_password"
alias ansible-vault-elisa-view-encrypt-string="ansible localhost --vault-password-file=~/wrk/elisa/dl_vault_password -m debug -a var='s3_secret_key' -e '@vars'"
alias sedi-latest-contacts='cd ~/dev/nitor/SEDI-Quiz/scripts && AWS_PROFILE=sedi ./fetch-contacts.sh && cd data && natu'
alias elisa-openstack-tnl-cfg='. ~/dev/elisa/datalake/infra/elisa_openstack_cfg/sose-datalake-tnl.sh'
alias elisa-openstack-sti-cfg='. ~/dev/elisa/datalake/infra/elisa_openstack_cfg/sose-datalake-sti.sh'
alias elisa-k8s-validate='docker run \
	      --mount src=`pwd`,target=/test,type=bind \
	      -e MANIFEST_PATH=/test/kubernetes.yaml.template.sh \
	      -e PROJECT_NAME=validation-phase \
	      ahtaaja.saunalahti.fi/datalake/kubernetes-core/public/k8s-actions:latest k8s.sh validate'

alias teams-nitor="HOME=~/.teams/nitor teams"
alias teams-elisa="HOME=~/.teams/elisa teams"

alias audio-meeting='
pactl set-default-sink alsa_output.usb-R__DE_Microphones_R__DE_NT-USB_Mini_E1714C25-00.analog-stereo
pactl set-default-source alsa_input.usb-R__DE_Microphones_R__DE_NT-USB_Mini_E1714C25-00.mono-fallback
pactl set-default-source alsa_input.usb-R__DE_Microphones_R__DE_NT-USB_Mini_E1714C25-00.multichannel-input
'

alias audio-speakers='pactl set-default-sink alsa_output.pci-0000_0c_00.4.analog-stereo'

alias kube-debug-busybox='kubectl run -i --tty busybox --image=busybox --restart=Never -- sh'
alias kube-debug-network='kubectl run -it --image=nicolaka/netshoot network-debugger-sami --restart=Never --rm'

alias encrypt-elisa-secrets='gpg --batch --symmetric --passphrase="$KUBERNETES_GPG_KEY"'
alias decrypt-elisa-secrets='gpg --batch --yes --decrypt --passphrase="$KUBERNETES_GPG_KEY"'

