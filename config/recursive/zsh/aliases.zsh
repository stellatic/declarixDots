c_A() {
	nvim ~/.config/$1/$2
}

zshC() { c_A zsh ${1}.zsh }

uzi () {
  unzip $1 -d ${1%.zip} 
}

deadpool () { ~/Games/Deadpool/Binaries/DP.exe }

function pwa () { 
  /home/stellatic/.local/share/firefoxpwa/runtime/firefox --class $1 --name $1 --profile /home/stellatic/.local/share/firefoxpwa/profiles/$2 --pwa $3 >> /dev/null 2>&1 & disown
}

snapchat () { pwa Snapchat 01KFBRQ7NPXZNC02HRA7ZNX6J2 01KFBRQ7RSKE42P9CVDDS34H17 }


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
alias surfshark='flatpak run com.surfshark.Surfshark'
vsc() { code $1 }

alias cp="cp --verbose"

hyprC() { c_A hypr hyprland.conf }

declaM() {
  dir=${${PWD}//$(echo ~\/".config"\/)}
  decla=/etc/declarix

  case $1 in
    "-r")
      rDir=$decla/config/recursive/$dir
      if [[ ! -d $rDir ]]; then
        mkdir $rDir
      fi
      mv $PWD/$2 $rDir/$2
      ;;

    *)
      echo "Not Found"
      ;;
  esac
}

function ruun() {
  $1 & disown
}

function thunderbird() { ruun thunderbird }
function syncthing() { ruun syncthing }
function funt() { function $1() { ruun $1 } }

funt keypassxc

GTA=/home/stellatic/.steam/steam/steamapps/compatdata/2242222865/pfx/drive_c/Program\ Files/Rockstar\ Games/Grand\ Theft\ Auto\ V\ Enhanced 
