#!/bin/bash

# 获取当前播放的歌曲信息
current_song=$(mpc current)

# 调用歌词显示器来显示歌词
lyrics "$current_song"
