#!/bin/sh

# 同步 config 文件
cd /root/.config
cp -r /root/.config/nvim  /home/commonfiles/vimfiles/config

# 同步 plugin 文件
cd /root/.local/share/nvim/site/pack 
cp -r /root/.local/share/nvim/site/pack  /home/commonfiles/vimfiles/plugin



