# Tell the shell that the folder `/usr/local/sbin` is another place to find program executables
export PATH="/usr/local/sbin:$PATH"

# Use colors in the shell and with the `grep` command
export CLICOLOR=1
export GREP_OPTIONS="--color=auto"

# Show dirty branch when using __git_ps1 in prompt
export GIT_PS1_SHOWDIRTYSTATE=1

# Change the shell prompt to be the current folder on line 1 and then an emoji + a delimiter on line 2
export PS1='\[\033[0;36m\]\w\[\033[0m\]\[\033[0;90m\]$(__git_ps1 " (%s)")\[\033[0m\]\n🔥 '

# Example of how to setup an alias, so instead of typing the full `ls -la`, just type `lsa`
alias lsa="ls -la"
