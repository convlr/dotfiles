# prompt settings
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED='\[\e[31m\]'
GREEN='\[\e[32m\]'
YELLOW='\[\e[33m\]'
BLUE='\[\e[34m\]'
RESET='\[\e[0m\]'

PS1="${GREEN}bruh${RESET}@${BLUE}hi${RESET}:${YELLOW}\w${RESET}\$(parse_git_branch)\$ "

# aliases
alias grep='grep --color=auto'
alias workpy='source ~/pyenv/bin/activate'
alias ls='ls -G'
