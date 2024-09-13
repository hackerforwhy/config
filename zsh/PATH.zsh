#$PATH
export PATH=/home/arch/sh:/usr/bin/winetricks:/home/arch/.local/bin:$PATH

#nnn
export NNN_PLUG='a:autojump;d:launch;c:cdpath;p:preview-tui;v:imgview;i:preview-tabbed;u:getplugs'
export NNN_FIFO='/tmp/nnn.fifo nnn'
export NNN_DEFAULT_EDITOR="emacs"
export NNN_OPENER='nvim'
#export NNN_OPENER='/usr/bin/nvim'
#export NNN_OPENER='emacs'
#export NNN_OPENER='/home/arch/.config/nnn/plugs/nuke'
export NNN_PREVIEWDIR="${NNN_PREVIEWDIR:-${TMPDIR:-/tmp}/nnn/previews}"
export CONFIG_DIR=${XDG_CONFIG_HOME:-$HOME/.config}/nnn/
export PLUGIN_DIR=${XDG_CONFIG_HOME:-$HOME/.config}/nnn/plugins

#ELM
export ELM_DISPLAY=wl
export ELM_DISPLAY=wayland

#fzf
export FZF_BASE=/usr/bin/fzf
#export FZF_DEFAULT_OPTS="--height 80% --layout=reverse --border --preview '~/sh/fzf-scope.sh {} '"
export FZF_DEFAULT_OPTS="--height 80% --layout=reverse --border --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500' --bind=alt-j:down,alt-k:up"
#export FZF_DEFAULT_OPTS="--height 80% --layout=reverse --border --previews "

#export FZF_DEFAULT_COMMAND="fd --exclude={.wine,.git,.idea,.vscode,.sass-cache,node_modules,build,.local,.steam,.m2,.rangerdir,.ssh,.ghidra,.mozilla} --type f --hidden --follow"

#export FZF_DEFAULT_COMMAND="fd --exclude={.wine,.git,.idea,.vscode,.sass-cache,node_modules,build,.local,.steam,.m2,.rangerdir,.ssh,.ghidra,.mozilla,.local,.lyrics,vivaldi} --type f --hidden --follow"

export FZF_DEFAULT_COMMAND="fd --exclude={.wine,.git,.idea,.vscode,.sass-cache,node_modules,build,.local,.steam,.m2,.rangerdir,.ssh,.ghidra,.mozilla,.local,.lyrics,vivaldi,.android,.cache,.dropbox,.thunderbird,.emacs.d,.dropbox-dist,.config,.electron,.var,go,Downloads} --type f  --follow .  $HOME/Y  "
#--hidden 显示隐藏文件
#/etc /home/arch/.config/ $HOME/Pictures/ $HOME/Y   "
#. /etc /home/arch "
export DISABLE_FZF_AUTO_COMPLETION="true"  #fzf自动补全
export QT_QPA_PLATFORMTHEME=qt6ct
#export BAT_THEME=GitHub
export TERM=kitty

export BW_SESSION="S/iUJ6K4tVtz/JahnCZT++9gYu6k6zL+cUs76rrsEMUoY9jfFCU+RStwJQd3G1e/edsVfhKrBRGcJIqn5/UdsQ=="
