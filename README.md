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

### 4. Create Configuration Directory for Oh My Posh
Create the configuration directory for Oh My Posh:

```
mkdir -p ~/.config/ohmyposh
```

### 5. Navigate to Configuration Directory
Navigate to the configuration directory:

```
cd ~/.config/ohmyposh/
```

### 6. Export Base Configuration
Export the base configuration for Oh My Posh:

```
oh-my-posh config export --output ./base.json
```

### 7. Convert Configuration to TOML
Convert the base configuration to TOML format and save it to the configuration directory:

```
oh-my-posh config export --format toml --output ~/.config/ohmyposh/zen.toml
```

### 8. Copy Configuration File
Copy the .zshrc configuration file from this repository to your home directory:

```
cp ~/zen-toml/.zshrc ~/
```

### 9. Start a New Zsh Session
To apply the changes and start using Zsh with the new configuration, open a new terminal session or run:

```
zsh
```


