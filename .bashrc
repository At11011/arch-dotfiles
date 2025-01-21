#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# fastfetch
kitten icat --align=left ~/Pictures/System/spinning_arch_2.gif | fastfetch --raw - --logo-width 50 --logo-height 25

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2025-01-10 02:33:45
export PATH="$PATH:/home/nathaniel/.local/bin"

# Autocompletions for pipx
eval "$(register-python-argcomplete pipx)"

# For tracking dotfiles
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/nathaniel/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/nathaniel/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<
