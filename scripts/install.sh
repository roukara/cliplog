#!/bin/bash

INSTALL_DIR="/usr/local/bin"
SCRIPT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

echo "📥 Installing cliplog..."

cp "$SCRIPT_DIR/bin/cliplog" "$INSTALL_DIR/cliplog"
chmod +x "$INSTALL_DIR/cliplog"

cp "$SCRIPT_DIR/bin/cliplog_watcher.sh" "$INSTALL_DIR/"
cp "$SCRIPT_DIR/bin/cliplog_export.sh" "$INSTALL_DIR/"

echo "✅ Installation complete!"
echo "📌 Usage:"
echo "  cliplog start   # Start clipboard monitoring"
echo "  cliplog export  # Export clipboard history to Markdown"
echo "  cliplog stop    # Stop clipboard monitoring"
