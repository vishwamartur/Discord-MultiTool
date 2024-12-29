#!/bin/bash

if [ ! -f requirements.txt ]; then
    echo "requirements.txt not found."
    exit 1
fi

while IFS= read -r module; do
    echo "Installing $module..."
    if ! pip install "$module"; then
        echo "Failed to install $module."
        exit 1
    fi
done < requirements.txt

echo "All modules installed successfully."
