#!/bin/bash

# Show ESP32 board / variant selector menu

# Array of configurations
configs=(
    "ESP32_GENERIC_S3_LVGL"
)

# Function to display menu and get user choice
show_menu() {
    echo "Select a configuration:"
    for i in "${!configs[@]}"; do
        echo "$((i+1)). ${configs[$i]}"
    done
    read -p "Enter your choice (1-${#configs[@]}): " choice
    return $choice
}

# Display menu and get user choice
show_menu
choice=$?

# Validate user input
if [[ $choice -lt 1 || $choice -gt ${#configs[@]} ]]; then
    echo "Invalid choice. Exiting."
    exit 1
fi

# Set BOARD and BOARD_VARIANT based on user choice
selected_config=(${configs[$((choice-1))]})
BOARD=${selected_config[0]}
BOARD_VARIANT=${selected_config[1]:-""}

echo "Selected configuration: BOARD=$BOARD, BOARD_VARIANT=$BOARD_VARIANT"
