#!/usr/bin/env bash
SUDO=""

if [[ $(command -v sudo 2>/dev/null) ]]; then
    echo "sudo is found"
    SUDO="sudo "
fi
POSITIONAL=()
verbose=FALSE
key=$1
while [[ $# -gt 0 ]]
do
    case $key in
    -v|--verbose)
    verbose=TRUE
    shift
    ;;
    *)
    shift
    POSITIONAL+=("$1")
    esac
    echo "verbose: ${verbose}"
done


if [[ $(command -v apt-get 2>/dev/null) ]]; then
    echo "Install dependencies for Ubuntu/Debian..."
    ${SUDO} apt install -y build-essential linux-headers-$(uname -r) 
    ${SUDO} apt install -y flex bison libncurses5-dev
    ${SUDO} apt clean
    echo "Done."
fi 
