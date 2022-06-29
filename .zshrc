#/bin/sh


if command -v ruby >/dev/null ; then
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
else fi

autoload -U colors && colors
PROMPT="%B%{$fg[red]%}%c%{$reset_color%}$ "
#PROMPT="%B%{$fg[red]%}%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M%{$fg[magenta]%} %~ %{$fg[red]%}%{$reset_color%}$%b "

zshpath=$HOME/.cache/zsh

if [ ! -d $zshpath ]; then
mkdir $zshpath
else fi

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$zshpath/history

alias \
		sm="sudo make install" \
		smu="sudo make uninstall" \
		cx="chmod +x" \
		ka="killall -q" \
		sdn="sudo shutdown -h now" \
		grep="grep --color=auto" \
		ls="ls -hN --color=auto --group-directories-first" \
		cp="cp -i" \
		ds="du -s -h" \
		xampp="sudo /opt/lampp/xampp start"


autoload -U compinit
zmodload zsh/complist
compinit
_comp_options+=(globdots)
