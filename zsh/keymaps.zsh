key() {
  if [ -z "$1" ]; then
    echo "Usage: key <filename>"
    return 1
  fi

  filename="$1"
  directory="$HOME/Y/my_config/zsh/keymaps"  # 将此目录替换为你想要搜索的目录

  if [ ! -d "$directory" ]; then
    echo "Error: Directory '$directory' does not exist."
    return 1
  fi

  find "$directory" -name "$filename" -print -exec bat {} \;
}
