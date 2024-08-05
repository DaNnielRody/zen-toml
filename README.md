# Zen Toml Configuration

This repository contains my personalized configuration for Zsh and Oh My Posh.

## Configuration Steps

For detailed documentation on configuring Oh My Posh, visit:
[Oh My Posh Documentation](https://ohmyposh.dev/docs/)

## Installation Instructions

### 1. Install Oh My Posh

To install Oh My Posh, run the following command:

```
curl -s https://ohmyposh.dev/install.sh | bash -s
```

### 2. Install Zsh
Install Zsh on Fedora using the following command:

```
sudo dnf install zsh
```

### 3. Set Zsh as Default Shell
Make Zsh your default shell by running:

```
chsh -s $(which zsh)
```

### 4. Copy Configuration File
Copy the .zshrc configuration file from this repository to your home directory:

```
cp ~/zen-toml/.zshrc ~/
```

### 5. Start a New Zsh Session
To apply the changes and start using Zsh with the new configuration, open a new terminal session or run:

```
zsh
```


