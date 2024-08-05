# Zen Toml Configuration

This repository contains my personalized configuration for Zsh with Zinit and Oh My Posh.

## Configuration Steps

For detailed documentation on configuring Oh My Posh, visit:
[Oh My Posh Documentation](https://ohmyposh.dev/docs/)

For detailed documentation on configuring Zinit, visit:
[Zinit Documentation](https://github.com/zdharma-continuum/zinit)

## Installation Instructions

### 1. Install Oh My Posh and Zinit

To install Oh My Posh, run the following command:

```
curl -s https://ohmyposh.dev/install.sh | bash -s
```

To install Zinit, run the following command:
```
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
```

### 2. Install Zsh
Install Zsh on your Linux distribution (choose the appropriate command for your system):


Fedora:
```
sudo dnf install zsh
```
Debian/Ubuntu/WSL (Windows):
```
sudo apt install zsh
```
Fedora:
```
sudo dnf install zsh
```
Arch Linux (and derivatives):
```
sudo pacman -S zsh
```
openSUSE:
```
sudo zypper install zsh
```
macOS:
```
brew install zsh
```

### 3. Set Zsh as Default Shell
Make Zsh your default shell by running:

```
chsh -s $(which zsh)
```

### 4. Clone the Repository
Clone this repository to your local machine:

```
git clone https://github.com/DaNnielRody/zen-toml.git ~/zen-toml
```

### 5. Create Configuration Directory for Oh My Posh
Create the configuration directory for Oh My Posh:

```
mkdir -p ~/.config/ohmyposh
```

### 6. Create a Symbolic Link to the Configuration File
Create a symbolic link from the repository configuration file to the Oh My Posh configuration directory:

```
ln -s ~/zen-toml/zen.toml ~/.config/ohmyposh/zen.toml
```

### 7. Copy Configuration File
Copy the .zshrc configuration file from this repository to your home directory:

```
cp ~/zen-toml/.zshrc ~/
```

### 8. Start a New Zsh Session
To apply the changes and start using Zsh with the new configuration, open a new terminal session or run:

```
zsh
```


