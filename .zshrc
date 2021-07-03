#!/bin/zsh

bindkey -v
bindkey '^R' history-incremental-search-backward

alias ls='ls -G'
alias grep='grep --color'
alias egrep='egrep --color'

#export PATH=~/Library/Python/3.7/bin:$PATH

# Autocompletion
# man zshoptions
autoload -Uz compinit
compinit
zstyle ':completion:*' insert-tab false

# Doesn't seem to work? FIXME later
zstyle ':completion:*' list-colors

# Make it bash-like so I can slam tab as many times I want
unsetopt AUTO_MENU

# vi/vim mode
bindkey -v '^?' backward-delete-char

# Locale settings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

VM_BASE_DIR="${HOME}/Virtual Machines.localized"
VM_DIR_SUFFIX=".vmwarevm"

# test-vm-exists: Test if a given VM exists.
function test-vm-exists() {
    if [[ -f "${VM_BASE_DIR}/${1}${VM_DIR_SUFFIX}/${1}.vmx" || -f "${VM_BASE_DIR}/${1}${VM_DIR_SUFFIX}/vm.vmx" ]]; then
        echo "VM ${1} exists"
        return 0
    else
        echo "VM ${1} does not exist!"
        return 1
    fi
}

# vmrun-start: Start a VM in headless mode
function fusion-start-vm() {
    test-vm-exists ${1}
    [[ $? -ne 0 ]] && return 1
    echo "Starting VM ${1}"
    if [[ -f "${VM_BASE_DIR}/${1}${VM_DIR_SUFFIX}/${1}.vmx" ]]; then
        vmrun start "${VM_BASE_DIR}/${1}${VM_DIR_SUFFIX}/${1}.vmx" nogui
    else
        vmrun start "${VM_BASE_DIR}/${1}${VM_DIR_SUFFIX}/vm.vmx" nogui
    fi
}

function fusion-list-vms() {
    find ${VM_BASE_DIR} -type d -depth 1 -iname '*.vmwarevm' -exec basename {} \; | sed s'/\.vmwarevm//g'
}

function fusion-get-ip() {
    vmrun getGuestIPAddress ${VM_BASE_DIR}/${1}.vmwarevm/vm.vmx
}

function start-linux-workstation() {
    fusion-start-vm macfail-fedora.lab.dchin.dev
}
