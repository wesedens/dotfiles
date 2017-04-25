# Debian-only stuff. Abort if not debian based
is_redhat || return 1

# Update yum
#e_header "Updating YUM"
#sudo yum update

# Install packages.
packages=(
  git
  curl
  htop
  stow
  tmux
)

#packages=($(setdiff "${packages[*]}" "$(dpkg --get-selections | grep -v deinstall | awk '{print $1}')"))

if (( ${#packages[@]} > 0 )); then
  e_header "Installing YUM packages: ${packages[*]}"
  for package in "${packages[@]}"; do
    sudo yum install -y --nogpgcheck "$package"
  done
fi
