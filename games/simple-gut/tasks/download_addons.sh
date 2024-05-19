#!/bin/bash

find . -type f

GUT_VERSION="9.2.1"

# Ensure that the current working directory is the root of the project for Godot
ROOT=$(pwd)

# Check if the current directory is the root by looking for a Godot project file
if [ ! -f "project.godot" ]; then
    echo "Error: This script must be run from the root directory of the Godot project."
    exit 1
fi

# Check if the addons/gut/plugins.cfg exists and verify the version
PLUGIN_CFG_PATH="${ROOT}/addons/gut/plugin.cfg"
REQUIRED_VERSION="version=\"$GUT_VERSION\""

if [ -f "$PLUGIN_CFG_PATH" ]; then
    if grep -q "$REQUIRED_VERSION" "$PLUGIN_CFG_PATH"; then
        echo "Correct Gut version is already installed."
        exit 0
    else
        echo "Incorrect Gut version. Updating to version $GUT_VERSION."
    fi
else
    echo "Gut plugin not found. Downloading and installing version $GUT_VERSION."
fi

# Download the Gut addon
GUT_URL="https://github.com/bitwes/Gut/archive/refs/tags/v${GUT_VERSION}.zip"
GUT_ZIP="v${GUT_VERSION}.zip"
ADDONS_DIR="${ROOT}"

# Download the Gut addon zip file
wget -O "$GUT_ZIP" "$GUT_URL"

# Unzip to a temporary directory
TEMP_DIR="${ROOT}/Gut-${GUT_VERSION}"
unzip -o "$GUT_ZIP" -d "$TEMP_DIR"

# Move the contents to the correct directory
mv "${TEMP_DIR}/Gut-${GUT_VERSION}"/* "$ADDONS_DIR"

# Clean up
rm -rf "$TEMP_DIR" "$GUT_ZIP"

find . -type f


echo "Gut version ${GUT_VERSION} has been installed successfully."
