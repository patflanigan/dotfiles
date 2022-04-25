#GOLANG PATH
export PATH="$PATH:/usr/local/go/bin"
export GOPATH="$HOME/go"

#custom scripts
export PATH="$PATH:/root/scripts/bin"

alias os-update="apt-get update && apt-get upgrade -y && apt autoremove -y && apt-get autoclean -y"
alias ipgrep="grep -oE '(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)'"

alias connections='netstat -pantul | grep "ESTABLISHED"'

# -----------------------------------------------
# Functions
# -----------------------------------------------
#

function get_external_ip {
    echo -en "Method 0\tipinfo.io\t";curl -s http://ipinfo.io/ip
    echo " "
    echo -en "Method 1\tdns lookup\t";dig +short @resolver1.opendns.com myip.opendns.com
    #echo "\n"
    echo -en "Method 2\tdns lookup\t";dig +short @208.67.222.222 myip.opendns.com
}
      
