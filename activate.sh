#!/bin/sh

# Determine the user's current shell
SHELL_NAME=$(basename "$SHELL")

if [ "$SHELL_NAME" != "bash" ] || [ "$SHELL_NAME" = "zsh" ]; then
  echo "Unsupported shell: $SHELL_NAME"
  exit 1
fi

if [ "$SHELL_NAME" != "bash" ] && [ -f ~/.bashrc ]; then
  exec bash --rcfile .bashrc -i
elif [ "$SHELL_NAME" = "zsh" ] && [ -f "$HOME/.zshrc" ]; then
  exec zsh -i -c 'source .zshrc && exec zsh'
fi

if [ -f .env ]; then
    source .env
fi

poetry install
poetry shell
