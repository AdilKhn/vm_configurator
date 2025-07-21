# Welcome to your .zshrc file!
# This file is executed when you start a new Zsh session.
# It's where you can customize your shell's behavior, appearance, and add aliases.

# --- Zsh History Configuration ---
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
# Append history to the history file
setopt APPEND_HISTORY
# Share history across all sessions
setopt SHARE_HISTORY
# Make history unique
setopt HIST_IGNORE_DUPS
# Don't record commands starting with a space
setopt HIST_IGNORE_SPACE
# Expire duplicates in history
setopt HIST_EXPIRE_DUPS_FIRST

# --- Zsh Autocompletion ---
# Enable completion system
autoload -Uz compinit
compinit

# --- Path Configuration (Optional) ---
# Add common directories to your PATH
# export PATH="/usr/local/bin:$PATH"
# export PATH="$HOME/bin:$PATH"
# export PATH="$HOME/.local/bin:$PATH"

# --- Zim Framework Configuration ---
# If you are using Zim, ensure it is installed first.
# Installation instructions: https://zimfw.sh/
# Typically, you would install Zim and then run `zimfw install`
# After installation, Zim will generate a `~/.zimrc` and `~/.zshrc` snippet.
# The following line sources Zim's initialization file:
# source "${ZIM_HOME}/zimfw.zsh"

# --- Starship Prompt Configuration ---
# Starship is a cross-shell prompt that's highly customizable.
# Ensure Starship is installed (e.g., via curl: curl -sS https://starship.rs/install.sh | sh)
# Then add the following line to initialize it:
eval "$(starship init zsh)"

# --- Plugins (if using Zim or managing manually) ---
# If you are using Zim, plugins are typically configured in ~/.zimrc
# Example plugins for Zim:
# zmodule zsh-users/zsh-autosuggestions
# zmodule zsh-users/zsh-syntax-highlighting
#
# If not using Zim or Oh My Zsh, you can manually source plugins:
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# --- General Aliases ---
alias ls='ls -F' # Append indicator (*/=@|) to entries
alias ll='ls -alF' # Long listing format
alias la='ls -A' # List all files including hidden ones
alias l='ls -CF' # Columnar output
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias c='clear' # Clear the screen
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias h='history' # Show command history

# --- System Aliases ---
alias update='sudo apt update && sudo apt upgrade -y' # For Debian/Ubuntu
# alias update='sudo yum update -y' # For CentOS/RHEL
# alias update='brew update && brew upgrade' # For macOS
alias install='sudo apt install -y' # For Debian/Ubuntu
# alias install='sudo yum install -y' # For CentOS/RHEL
# alias install='brew install' # For macOS
alias rm='rm -i' # Always ask before removing
alias cp='cp -i' # Always ask before copying
alias mv='mv -i' # Always ask before moving

# --- Git Aliases ---
# These are useful regardless of your Zsh framework.
alias g='git'
alias gs='git status -sb' # Git status (short branch)
alias ga='git add .' # Git add all changes
alias gaa='git add --all' # Git add all changes
alias gc='git commit -m' # Git commit with message
alias gca='git commit -am' # Git commit all with message
alias gco='git checkout' # Git checkout
alias gcb='git checkout -b' # Git checkout new branch
alias gp='git push' # Git push
alias gpl='git pull' # Git pull
alias gd='git diff' # Git diff
alias gl='git log --oneline --decorate --all --graph' # Git log (prettier)
alias gld='git log --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative' # Detailed git log
alias gr='git remote -v' # Git remotes
alias grh='git reset --hard' # Git reset hard
alias grs='git restore --staged' # Git restore staged
alias gbr='git branch' # Git branch
alias gbra='git branch -a' # Git branch all
alias gcl='git clone' # Git clone
alias gst='git stash' # Git stash
alias gsta='git stash apply' # Git stash apply
alias gstd='git stash drop' # Git stash drop

# --- Custom Functions (Examples) ---
# Create a new directory and change into it
mkcd () {
  mkdir -p "$1" && cd "$1"
}

# Serve current directory with Python's HTTP server
serve () {
  python3 -m http.server "$1"
}

# --- Editor ---
# export EDITOR="nvim" # Set your preferred text editor (e.g., nano, vim, code)
# alias code='code .' # Open VS Code in current directory

# --- Source other files ---
# If you have other configuration files, you can source them here.
# For example, if you have a separate file for environment variables:
# source ~/.zsh_env

# --- End of .zshrc ---

