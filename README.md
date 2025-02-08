# Ollama Uninstaller

This script completely removes Ollama from your Linux system.

## 🛠️ Features
- Stops and disables the Ollama service
- Deletes all Ollama-related files
- Removes the systemd service
- Deletes the Ollama user and group


## 📥 Installation
Clone this repository:
```sh
git clone https://github.com/fobaty/ollama-uninstaller.git
cd ollama-uninstaller
```
###🗑️ Usage
Make the script executable:
```sh
chmod +x uninstall_ollama.sh
```
Run the script with sudo:
```sh
sudo ./uninstall_ollama.sh
```
⚠️ Warning
This script will permanently remove Ollama and its related files from your system.
