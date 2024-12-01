# Setup fzf
# ---------
if [[ ! "$PATH" == */home/arch/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/arch/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/arch/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/arch/.fzf/shell/key-bindings.zsh"


# Print tree structure in the preview window
export FZF_ALT_C_OPTS="--preview 'tree -C {}'"
#~ export FZF_DEFAULT_OPTS= --preview '[[ $(file --mime {}) =~ binary ]] &&
                  #~ echo {} is a binary file ||
                  #~ (bat --style=numbers --color=always {} ||
                  #~ highlight -O ansi -l {} ||
                  #~ coderay {} ||
                  #~ rougify {} ||
                  #~ cat {}) 2> /dev/null | head -500''
