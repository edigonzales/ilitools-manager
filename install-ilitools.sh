#!/bin/bash

ILITOOLS_DIR="$HOME/.ilitools"
BIN_DIR="$ILITOOLS_DIR/bin"
SCRIPT_URL="https://gist.github.com/edigonzales/320ba6b6407a4989c644a687759ce592/raw/ilitools"

echo "[ilitools] Installing to $ILITOOLS_DIR..."

mkdir -p "$BIN_DIR"

curl -L -s -o "$BIN_DIR/ilitools" "$SCRIPT_URL"
chmod +x "$BIN_DIR/ilitools"

SHELL_RC=""
case "$SHELL" in
  */zsh)  SHELL_RC="$HOME/.zshrc" ;;
  */bash) SHELL_RC="$HOME/.bashrc" ;;
  *)      SHELL_RC="$HOME/.profile" ;;
esac

if ! grep -q 'ilitools/bin' "$SHELL_RC"; then
  echo "export PATH=\"$BIN_DIR:\$PATH\"" >> "$SHELL_RC"
  echo "[ilitools] Added $BIN_DIR to PATH in $SHELL_RC"
else
  echo "[ilitools] PATH already set in $SHELL_RC"
fi

echo "[ilitools] Installation complete!"
echo "Open a new terminal or run: source $SHELL_RC"
echo "Then try: ilitools"
