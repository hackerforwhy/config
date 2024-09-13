#export ALL_PROXY=socks5://127.0.0.1:20170

# where proxy
proxy () {
  export all_proxy=socks5://127.0.0.1:20170
  echo "Proxy on"
}
# where noproxy
noproxy () {
  unset all_proxy
  echo "Proxy off"
}

alias f="fzf --bind 'alt-s:execute(mpv {}),alt-e:execute(emacs -nw {}),alt-n:execute(nvim {}),alt-v:execute(vlc {}),alt-z:execute(7z x {})'"
#alias ff="fzf --bind 'alt-s:execute(swayimg {}),alt-e:execute(emacsclient -c {}),alt-n:execute(nvim {}),alt-v:execute(tycat {})'"
#alias ff="fzf --height 80% --layout=reverse --border --preview '~/sh/fzf-scope.sh {} '"
#~ export LANG=zh_CN.UTF-8
#~ export LC_ALL=zh_CN.UTF-8
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh



#


ns ()
{
    # Block nesting of nnn in subshells
    [ "${NNNLVL:-0}" -eq 0 ] || {
        echo "nnn is already running"
        return
    }

    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
    # see. To cd on quit only on ^G, remove the "export" and make sure not to
    # use a custom path, i.e. set NNN_TMPFILE *exactly* as follows:
    #      NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    #export NNN_IMAGE_VIEWER=emacs

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    # The command builtin allows one to alias nnn to n, if desired, without
    # making an infinitely recursive alias
    command nnn "$@"

    [ ! -f "$NNN_TMPFILE" ] || {
        . "$NNN_TMPFILE"
        rm -f "$NNN_TMPFILE" > /dev/null
    }
}

[ -n "$NNNLVL" ] && PS1="N$NNNLVL $PS1"
# export NNN_BMS="d:$HOME/Documents;u:/home/user/Cam Uploads;D:$HOME/Downloads/;P:$HOME/Pictures;y:$HOME/Y"


#quote
#hitokoto | cowsay
#


eval `dircolors $HOME/.dir_colors`

eval "$(zoxide init zsh)"
