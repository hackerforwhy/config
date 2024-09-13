#!/bin/bash


case "$1" in
	*.pdf) emacs "$1" ;;
	*.md)  mdcat "$1" ;;
	*.zip) zipinfo "$1" ;;
	*.7z) 7z l "$1" ;;
	*.jpg) swayimg  "$1" ;;
	*.png) swayimg  "$1" ;;
	*) bat --color=always --italic-text=always --style=numbers,changes,header --line-range :500 "$1" ;;
esac
