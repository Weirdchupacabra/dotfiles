# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=3000
SAVEHIST=5000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/alan/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit; prompt gentoo
# End of lines added by compinstall
# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey '^[[Z' autosuggest-accept # shift + tab will autocomplete autosuggestion
# Start startx after succesful login on tty1
if [ "$(tty)" = "/dev/tty1" ]; then
    exec startx &> /dev/null
fi
alias 'ls -a=eza --icons -a'
alias 'ls=eza --icons'

