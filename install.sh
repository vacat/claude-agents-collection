#!/bin/bash

# Claude Code Agents Collection Installer
# This script installs agent collections to either ~/.claude/agents or ./.claude/agents

set -e

echo " Claude Code Agents Collection Installer"
echo "======================================="
echo

# Function to install a collection
install_collection() {
    local repo_url=$1
    local target_dir=$2
    local collection_name=$3
    
    echo "Installing $collection_name collection..."
    
    # Create target directory if it doesn't exist
    mkdir -p "$target_dir"
    
    # Clone the repository
    if git clone "$repo_url" "$target_dir"; then
        echo "✓ $collection_name collection installed successfully to $target_dir"
    else
        echo "✗ Failed to install $collection_name collection"
        return 1
    fi
}

# Function to install all collections
install_all_collections() {
    local target_base=$1
    
    echo "Installing all agent collections to $target_base..."
    echo
    
    # Install contains-studio collection
    if [ -d "contains-studio" ]; then
        mkdir -p "$target_base/contains-studio"
        cp -r contains-studio/* "$target_base/contains-studio/"
        echo "✓ contains-studio collection installed"
    else
        echo "⚠ contains-studio directory not found in current repository"
    fi
    
    # Install dl-ezo collection
    if install_collection "https://github.com/dl-ezo/claude-code-sub-agents.git" \
        "$target_base/dl-ezo" "dl-ezo"; then
        echo "✓ dl-ezo collection installed"
    else
        echo "✗ Failed to install dl-ezo collection"
    fi
    
    echo
    
    # Install wshobson collection
    if install_collection "https://github.com/wshobson/agents.git" \
        "$target_base/wshobson" "wshobson"; then
        echo "✓ wshobson collection installed"
    else
        echo "✗ Failed to install wshobson collection"
    fi
    
    echo
    
    # Install iannuttall collection
    if install_collection "https://github.com/iannuttall/claude-agents.git" \
        "$target_base/iannuttall" "iannuttall"; then
        echo "✓ iannuttall collection installed"
    else
        echo "✗ Failed to install iannuttall collection"
    fi
    
    echo
    echo "All collections installation completed!"
}

# Function to show usage
show_usage() {
    echo "Usage: $0 [global|local|both]"
    echo
    echo "Installation options:"
    echo "  global    Install to global location (~/.claude/agents)"
    echo "  local     Install to local project location (./.claude/agents)"
    echo "  both      Install to both locations"
    echo
    echo "If no option is provided, the script will prompt for selection."
    echo
}

# Check if running non-interactively (piped execution)
if [ ! -t 0 ] || [ -n "$1" ]; then
    # Handle command line arguments
    case "$1" in
        global)
            TARGET_DIR="$HOME/.claude/agents"
            echo "Installing to global location: $TARGET_DIR"
            install_all_collections "$TARGET_DIR"
            ;;
        local)
            TARGET_DIR="./.claude/agents"
            echo "Installing to local project location: $TARGET_DIR"
            install_all_collections "$TARGET_DIR"
            ;;
        both)
            echo "Installing to both global and local locations..."
            install_all_collections "$HOME/.claude/agents"
            echo
            install_all_collections "./.claude/agents"
            ;;
        -h|--help)
            show_usage
            exit 0
            ;;
        "")
            # If no argument and not running interactively, default to global
            if [ ! -t 0 ]; then
                TARGET_DIR="$HOME/.claude/agents"
                echo "Installing to global location: $TARGET_DIR"
                install_all_collections "$TARGET_DIR"
            else
                # Running interactively, show prompt
                show_prompt
            fi
            ;;
        *)
            echo "Invalid option: $1"
            show_usage
            exit 1
            ;;
    esac
else
    # Interactive mode
    show_prompt
fi

# Function to show interactive prompt
show_prompt() {
    echo "Where would you like to install the agent collections?"
    echo "1) Global installation (~/.claude/agents) - Available to all projects"
    echo "2) Local installation (./.claude/agents) - Available only to this project"
    echo "3) Install all collections to both locations"
    echo "4) Help"
    echo

    while true; do
        read -p "Please select an option (1, 2, 3, or 4): " choice
        case $choice in
            1)
                TARGET_DIR="$HOME/.claude/agents"
                echo
                echo "Installing to global location: $TARGET_DIR"
                install_all_collections "$TARGET_DIR"
                break
                ;;
            2)
                TARGET_DIR="./.claude/agents"
                echo
                echo "Installing to local project location: $TARGET_DIR"
                install_all_collections "$TARGET_DIR"
                break
                ;;
            3)
                echo
                echo "Installing to both global and local locations..."
                install_all_collections "$HOME/.claude/agents"
                echo
                install_all_collections "./.claude/agents"
                break
                ;;
            4)
                show_usage
                show_prompt
                return
                ;;
            *)
                echo "Invalid option. Please enter 1, 2, 3, or 4."
                ;;
        esac
    done
}

echo
echo "Installation completed successfully!"
echo "You can now use these agents with Claude Code."
echo
echo "For more information, please refer to the README.md file."