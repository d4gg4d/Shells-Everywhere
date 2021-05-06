# -*- mode: shell-script; -*-

if command -v nitor-dt-register-complete > /dev/null 2>&1; then
    eval "$(nitor-dt-register-complete)"
fi

pipe-emacs() {
    (f=$(mktemp); cat > $f; emacsclient -c $f; cat $f; rm -v $f);
}
