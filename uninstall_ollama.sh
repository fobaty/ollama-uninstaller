#!/bin/bash
# Script for removing Ollama from the system

set -e

echo "Stopping and disabling Ollama service..."
sudo systemctl stop ollama 2>/dev/null || true
sudo systemctl disable ollama 2>/dev/null || true

# Removing Ollama files
echo "Removing Ollama files..."
sudo rm -rf /usr/local/lib/ollama /usr/local/bin/ollama
sudo rm -rf /usr/lib/ollama /usr/bin/ollama
sudo rm -rf ~/.ollama/


# Removing systemd service
echo "Removing systemd service..."
sudo rm -f /etc/systemd/system/ollama.service
sudo systemctl daemon-reload

# Removing Ollama user and group
if id "ollama" &>/dev/null; then
    echo "Removing Ollama user..."
    sudo userdel -r ollama 2>/dev/null || true
fi
if getent group ollama &>/dev/null; then
    echo "Removing Ollama group..."
    sudo groupdel ollama 2>/dev/null || true
fi

echo "Ollama has been successfully removed!"
