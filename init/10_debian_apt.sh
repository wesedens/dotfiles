# Debian-only stuff. Abort if not debian based
is_debian || return 1


# Update APT.
e_header "Updating APT"
sudo apt-get -qq update
sudo apt-get -qq dist-upgrade

# Install APT packages.
packages=(
  build-essential
  cowsay
  git-core
  htop
  libssl-dev
  mercurial
  nmap
  silversearcher-ag
  sl
  telnet
  tmux
  tree
)

packages=($(setdiff "${packages[*]}" "$(dpkg --get-selections | grep -v deinstall | awk '{print $1}')"))

if (( ${#packages[@]} > 0 )); then
  e_header "Installing APT packages: ${packages[*]}"
  for package in "${packages[@]}"; do
    sudo apt-get -qq install "$package"
  done
fi
