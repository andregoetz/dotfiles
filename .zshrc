# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="andiru"

# Plugins
plugins=(git sudo zoxide zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Stamp shown in the history command output
# HIST_STAMPS="dd.mm.yyyy"

# User configuration
export PATH=$PATH:$HOME/.local/bin

# Preferred editor for local and remote sessions
export EDITOR='nvim'

# Aliases
alias pacshut='yay -Syu --noconfirm && sudo shutdown now'
alias pacreboot='yay -Syu --noconfirm && sudo reboot'
alias disex='disown && exit'
search() {
    search_str="https://lite.duckduckgo.com/lite?q="
    for word in $*; do
	search_str+="${word}+"
    done
    elinks $search_str
}
ddg() {
    ddgr -r de-de --url-handler firefox-developer-edition $*
}
rn () {
    dir=$(dirname $1)
    nf=${dir}/$2
    mv $1 $nf
}
rgg () {
    git rev-list --all | xargs git grep "$*"
}
vv() {
    virt-viewer --connect=qemu:///system --domain-name $1
}
findn() {
    find . -name "*$**"
}
encrypt() {
    en=$(readlink -f $1)
    ori=$(readlink -f $2)
    mkdir $ori
    encfs $en $ori
}
decrypt() {
    dir=$(readlink -f $1)
    fusermount -u $dir && rm -r $dir
}

