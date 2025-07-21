#!/bin/bash

echo "Starting Zsh installation and setup..."

# Function to check if a command exists and is executable
# This is more robust than just 'type' as it verifies it's a real executable file.
command_exists() {
  local cmd="$1"
  if type "$cmd" &>/dev/null; then
    # If 'type' finds it, try to get its path and check if it's an executable file
    local path=$(which "$cmd" 2>/dev/null)
    if [ -f "$path" ] && [ -x "$path" ]; then
      return 0 # Command exists and is an executable file
    fi
  fi
  return 1 # Command does not exist or is not an executable file
}

# --- Installation Function ---
install_zsh() {
  if command_exists zsh; then
    echo "Zsh is already installed."
  else
    echo "Zsh not found. Attempting to install Zsh..."
    if command_exists apt; then
      sudo apt update && sudo apt install -y zsh
    elif command_exists yum; then
      sudo yum install -y zsh
    elif command_exists brew; then
      brew install zsh
    else
      echo "Error: Could not determine package manager. Please install Zsh manually."
      echo "For example: sudo apt install zsh (Debian/Ubuntu) or sudo yum install zsh (CentOS/RHEL) or brew install zsh (macOS)"
      exit 1
    fi

    if command_exists zsh; then
      echo "Zsh installed successfully."
    else
      echo "Error: Zsh installation failed. Please check your internet connection or package manager."
      exit 1
    fi
  fi
}

# --- Set Zsh as default shell ---
set_default_shell() {
  echo "Setting Zsh as the default shell..."
  # Get the path to zsh
  ZSH_PATH=$(which zsh)

  if [ -z "$ZSH_PATH" ]; then
    echo "Error: Could not find Zsh executable. Please ensure Zsh is installed correctly."
    exit 1
  fi

  # Check if Zsh is already the default shell
  if [ "$SHELL" = "$ZSH_PATH" ]; then
    echo "Zsh is already your default shell."
  else
    echo "Current default shell: $SHELL"
    echo "New default shell will be: $ZSH_PATH"
    chsh -s "$ZSH_PATH"

    if [ $? -eq 0 ]; then
      echo "Successfully set Zsh as your default shell."
      echo "Please log out and log back in (or restart your terminal) for the changes to take effect."
    else
      echo "Failed to set Zsh as default shell. You may need to run 'chsh -s $(which zsh)' manually."
    fi
  fi
}

# --- Main execution ---
install_zsh
set_default_shell

echo "Zsh setup script finished. Reboot please"
