<div align="center">

# 🏠 .dotfiles  
Windows DotFiles for .Net/Vue Development  
Managed by [chezmoi](https://github.com/twpayne/chezmoi)

</div>

---

## 📸 Screenshot

(Add your screenshot here if you want)

---

## 🚀 Install Guide

### 1. Install Scoop, Git, and MinGW (via PowerShell)

Open PowerShell as Administrator and run:

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
scoop install main/git
scoop install main/mingw
```
### 2. Setup Git

Generate SSH key, start ssh-agent, and configure Git:
```

git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"

```

(Copy the output to your GitHub SSH keys.)

### 3. Install Chezmoi and Initialize Dotfiles

```powershell
scoop install main/chezmoi
chezmoi init --apply https://github.com/ctorD/.dotFiles.git
```

### 4. Add Scoop Buckets
```powershell
scoop bucket add extras
scoop bucket add versions
scoop bucket add nerd-fonts
```
### 5. Install Applications & Dev Tools
```powershell
scoop install nerd-fonts/JetBrains-Mono
scoop install main/starship
scoop install extras/obsidian
scoop install extras/jetbrains-toolbox
scoop install extras/chrome
scoop install extras/glazewm
scoop install extras/flow-launcher
scoop install extras/twinkle-tray
scoop install extras/spotify
scoop install extras/wezterm
scoop install main/dotnet-sdk
scoop install main/nvm
scoop install main/lazygit
scoop install extras/vscode
scoop install main/gitextensions
scoop install main/ripgrep
scoop install ffmpeg 7zip jq poppler fd fzf zoxide resvg imagemagick
scoop install yazi
```
### 6. Setup Node.js and Quasar CLI (via nvm)
```powershell
nvm install latest
nvm use latest
npm install -g yarn
npm install -g @quasar/cli
```

### 7. Additional configuration

Your VS Code settings and extensions are managed via chezmoi.
Fonts installed via Nerd Fonts bucket (e.g., JetBrains Mono Nerd Font).
Use WezTerm configured for your terminal experience.

🎨 Themes & Fonts
JetBrains Mono Nerd Font (installed via Scoop Nerd Fonts bucket)
Starship prompt configured in your dotfiles for a clean prompt experience.

🛠️ Maintenance & Updates

To update Scoop apps:
```powershell
scoop update *
```
To update dotfiles:
```powershell
chezmoi update
chezmoi apply
```
