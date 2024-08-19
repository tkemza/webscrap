#!/bin/bash

#   Author      :       Tkemza

#   Github      :       https://github.com/tkemza

#   Discord     :       n11kol1c

#   MIT LICENSE :       (C) 2024 tkemza 

# Webscrap - automated tool for checking websites responses 
# Use this tool for educational purposes only
# The creator will not be responsible for the consequences caused by this tool

function reset_color() {
    # Reset color (exit codes)
	tput sgr0   # reset attributes
	tput op     # reset color
	return      # return attribute
}

function colors() {
    ## ANSI colors (FG & BG) (exit codes)
    # FG (exit codes)
    RED="$(printf '\033[31m')"  
    GREY="$(printf '\033[2;37m')"
    DARKGREEN="$(printf '\033[2;32m')"
    YELLOW="$(printf '\033[1;33m')"
    GREEN="$(printf '\033[32m')"  
    ORANGE="$(printf '\033[33m')"  
    BLUE="$(printf '\033[34m')"
    MAGENTA="$(printf '\033[35m')"  
    CYAN="$(printf '\033[36m')"  
    WHITE="$(printf '\033[37m')" 
    BLACK="$(printf '\033[30m')"
    # BG (exit codes)
    REDBG="$(printf '\033[41m')"  
    GREENBG="$(printf '\033[42m')"  
    ORANGEBG="$(printf '\033[43m')"  
    BLUEBG="$(printf '\033[44m')"
    MAGENTABG="$(printf '\033[45m')"  
    CYANBG="$(printf '\033[46m')"  
    WHITEBG="$(printf '\033[47m')" 
    BLACKBG="$(printf '\033[40m')"
    # Reset functions (exit codes)
    RESETBG="$(printf '\e[0m\n')"
    RESET="$(printf '\033[0m')"
}

function textAttributes() {
    ## ANSI Attributes (exit codes)
    BOLD="$(printf '\033[1m')"
    ITALIC="$(printf '\033[3m')"
    DIM="$(printf '\033[2m')"
    # Reset function
    RESET="$(printf '\033[0m')"
}

function checkForUpdate() {
    updt=1
    if [[ $updt -eq 1 ]]; then
        sudo apt-get update -y
    else    
        printf ""
    fi
}

function gitPull() {
    source updt/updt.sh
    __newsr__="https://github.com/tkemza/webscrap.git" # GitPull link 
    if [[ $__newsr__ == $__newsr__ ]]; then # If statement for git pull
        git pull "$__newsr__" # Git pull
        errorMessage
    else
        errorMessage
    fi
}

function mainBanner() {
    { colors; reset_color; textAttributes; }
    cat <<- EOF 
    ${ORANGE}
      
      ▄█     █▄     ▄████████ ▀█████████▄     ▄████████  ▄████████    ▄████████    ▄████████    ▄███████▄ 
     ███     ███   ███    ███   ███    ███   ███    ███ ███    ███   ███    ███   ███    ███   ███    ███ 
     ███     ███   ███    █▀    ███    ███   ███    █▀  ███    █▀    ███    ███   ███    ███   ███    ███ 
     ███     ███  ▄███▄▄▄      ▄███▄▄▄██▀    ███        ███         ▄███▄▄▄▄██▀   ███    ███   ███    ███ 
     ███     ███ ▀▀███▀▀▀     ▀▀███▀▀▀██▄  ▀███████████ ███        ▀▀███▀▀▀▀▀   ▀███████████ ▀█████████▀  
     ███     ███   ███    █▄    ███    ██▄          ███ ███    █▄  ▀███████████   ███    ███   ███        
     ███ ▄█▄ ███   ███    ███   ███    ███    ▄█    ███ ███    ███   ███    ███   ███    ███   ███        
      ▀███▀███▀    ██████████ ▄█████████▀   ▄████████▀  ████████▀    ███    ███   ███    █▀   ▄████▀      
                                                                     ███    ███                           

    ${RESETBG}
EOF
}

# Including pre-made functions
colors
textAttributes
reset_color

# Include source from another Shell Script
source updt/updt.sh

# Configs 
# Check if user is root
if [[ $EUID -ne 0 ]]; then
    printf "${RED}User must convert to root. ${RESETBG}"
    exit # Exit if user is not root
else
    printf "${DARKGREEN}User is root." # Continue
    sleep 1
    clear
fi


# Function to check website status
function check_website() {
    { colors; reset_color; textAttributes; clear; mainBanner; }
        # User inputs
        read -p "Enter your email: " EMAIL
        read -p "Enter website url: " URL

        # Setting Website status
        STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" "$URL")

        # Information gather from inputed url
        if [ "$STATUS" -ne 200 ]; then
            echo "[$URL] Website is ${RED}down${RESETBG}. Status code: $STATUS" | sendmail "$EMAIL"
        else 
            printf "[$URL] Website is ${DARKGREEN}online${RESETBG}. Status code: $STATUS" | sendmail "$EMAIL"
        fi

        # Check URL in URLS
        for URL in "${URLS[@]}"; do
            check_website "$URL"
        done
        
        # Exiting loop beside user input
        echo ""
        read -p "Do you want to exit a tool? (y/n) " userinput
        if [[ $userinput == "y" ]]; then
            clear
            exit
        else
            check_website
        fi  
}

check_website


