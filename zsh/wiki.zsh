wiki() {
  if [ -z "$1" ]; then
    echo "Usage: wiki <filename>"
    return 1
  fi

  filename="$1"
  directory="$HOME/Y/Note/wiki/"  # 将此目录替换为你想要搜索的目录

  if [ ! -d "$directory" ]; then
    echo "未记载；Error: Directory '$directory' does not exist."
    return 1
  fi

  find "$directory" -name "$filename" -print -exec bat {} \;
}
