#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '

export MAKEFLAGS="-j$(expr $(nproc) \+ 1)"
export PATH="$PATH:/home/milic/.suckless/dwmblocks/statusbar"

cd ~

export QSYS_ROOTDIR="/home/milic/intelFPGA_lite/22.1std/quartus/sopc_builder/bin"
