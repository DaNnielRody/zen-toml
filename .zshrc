# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export FUNCNEST=1000

# Path to use my user as a variable
export USER_NAME=$(whoami)

# Apps aliases
alias obs='/usr/bin/obs'
alias edge='/usr/bin/microsoft-edge-stable'
alias discord='/usr/bin/Discord'
alias telegram='/usr/bin/telegram-desktop'
alias idea='/home/danch/Downloads/idea-IU-241.18034.62/bin/idea.sh'
alias rider='/home/danch/Downloads/JetBrains\ Rider-2024.1.4/bin/rider.sh'

#System aliases
alias shutdown='sudo shutdown now'
alias reboot='sudo reboot now'

#Package Manager aliases
# Same as dnf snippet:
#alias dnfi='sudo dnf install -y'
#alias dnfu='sudo dnf update -y'
#alias dnfr='sudo dnf remove'
#alias dnfc='sudo dnf clean all'

#Paths
export PATH=$PATH:/home/danch/.local/bin

# Load completions
autoload -Uz compinit && compinit

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
zinit light hlissner/zsh-autopair
zinit light MichaelAquilina/zsh-you-should-use
zinit light junegunn/fzf

# Add snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::history
zinit snippet OMZP::encode64
zinit snippet OMZP::fzf
zinit snippet OMZP::copypath
zinit snippet OMZP::command-not-found
zinit snippet OMZP::docker
zinit snippet OMZP::dnf
zinit snippet OMZP::aliases

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Init oh-my-posh
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.toml)"

# Shell integration
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

# End Configuration
source $ZSH/oh-my-zsh.sh
