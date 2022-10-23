# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="andiru"

# Plugins
plugins=(git sudo colorize zoxide python zsh-autosuggestions zsh-syntax-highlighting archlinux alias-finder common-aliases mvn copyfile copypath cp)

source $ZSH/oh-my-zsh.sh

ZSH_ALIAS_FINDER_AUTOMATIC=true

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
alias fhvpn='sudo openconnect -u ag3433s https://anyconnect.fh-aachen.de'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

search() {
    search_str="https://lite.duckduckgo.com/lite?q="
    for word in $*; do
	search_str+="${word}+"
    done
    elinks $search_str
}
duration() {
    for i in $*; do
	echo -n "$(basename $i): "
	ffmpeg -i "$i" 2>&1 | grep Duration | cut -d ' ' -f 4 | sed s/,//
    done
}
alias dur='duration'
dursum() {
    sum=0
    for i in $*; do
	sum=$(($sum + $(ffmpeg -i "$i" 2>&1 | grep Duration | cut -d ' ' -f 4 | sed s/,// | sed 's@\..*@@g' | awk '{ split($1, A, ":"); split(A[3], B, "."); print 3600*A[1] + 60*A[2] + B[1] }')))
    done
    tmp=$(($sum / 60))
    s=$(($sum % 60))
    min=$(($tmp % 60))
    h=$(($tmp / 60))
    echo "total duration: $h:$min:$s"
}
ddg() {
    ddgr -r de-de --url-handler firefox-developer-edition $*
}
rn() {
    dir=$(dirname $1)
    nf=${dir}/$2
    mv $1 $nf
}
lns() {
    dir=$(pwd)
    ln -s ${dir}/$1 $2
}
rgg () {
    git rev-list --all | xargs git grep "$*"
}
vv() {
    virt-viewer --connect=qemu:///system --domain-name $1
}
decrypt() {
    en=$(readlink -f $1)
    ori=$(readlink -f $2)
    mkdir $ori
    encfs $en $ori
}
alias init_encrypt='decrypt'
encrypt() {
    dir=$(readlink -f $1)
    fusermount -u $dir && rm -r $dir
}
alias reencrypt='encrypt'
dec_pdf() {
    if [[ $1 == *.pdf ]]; then
	echo -n "Enter password: "
	read -s pw; echo
	file=$1
	mv $file enc_$file
	qpdf --password=$pw --decrypt enc_$file $file
	rm enc_$file
    fi
}

