c_A() {
	nvim ~/.config/$1/$2
}
alias ls='ls --color=auto'
alias mkdir='mkdir -p -v'
#code () { vscodium -r $1 }
chmox () { chmod +x $1 }
alias swR="sudo pkill -HUP swhkd"
alias icat="kitty +kitten icat"
alias nvimS="sudo -E -s nvim $1"
decla(){ nvim /etc/declarix/declarix.toml }
alias swhC='c_A swhkd swhkdrc'
alias chromE='nvimS /etc/chromium/policies/managed/managed_policies.json'
