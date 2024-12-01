#!/bin/bash

# 使用 wmctrl 命令获取当前显示的窗口列表
window_list=$(wmctrl -l)


visible_apps=0
while IFS= read -r window; do
    app=$(echo "$window" | awk '{print $NF}')
    if [[ "$app" != "Polybar" ]]; then
        visible_apps=$((visible_apps + 1))
    fi
done <<< "$window_list"
visible_apps=$((visible_apps - 0))
# 输出具有界面的应用程序数量
echo "$visible_apps"
