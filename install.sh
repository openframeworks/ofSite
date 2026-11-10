#!/bin/bash

# Use pyenv's Python 3.11 explicitly
PYTHON_CMD="$HOME/.pyenv/versions/3.11.8/bin/python3"

echo "Creating virtual environment with Python 3.11..."
$PYTHON_CMD -m venv nikola

echo "Activating virtual environment..."
source nikola/bin/activate

echo "Upgrading pip..."
pip install --upgrade pip

echo "Installing Nikola 7.8.15..."
pip install --upgrade "Nikola[extras]"==7.8.15

echo "Installing compatible dependencies..."
pip install --upgrade python-Levenshtein
pip install --upgrade pathlib
pip install --upgrade beautifulsoup4

# Install compatible versions for Python 3.11
echo "Installing Python 3.11 compatible packages..."
pip install --upgrade "watchdog>=2.0"
pip install "doit==0.35.0"
pip install --force-reinstall "markdown==3.2.2"

echo "Patching Nikola for Python 3.11 compatibility..."
# Fix the Callable import issue
sed -i 's/from collections import defaultdict, Callable, OrderedDict/from collections import defaultdict, OrderedDict\nfrom collections.abc import Callable/' nikola/lib/python3.11/site-packages/nikola/utils.py

echo "Disabling incompatible markdown plugins..."
# Disable problematic markdown plugins
mv nikola/lib/python3.11/site-packages/nikola/plugins/compile/markdown/mdx_podcast.plugin nikola/lib/python3.11/site-packages/nikola/plugins/compile/markdown/mdx_podcast.plugin.disabled 2>/dev/null || true
mv nikola/lib/python3.11/site-packages/nikola/plugins/compile/markdown/mdx_gist.plugin nikola/lib/python3.11/site-packages/nikola/plugins/compile/markdown/mdx_gist.plugin.disabled 2>/dev/null || true

echo ""
echo "Installation complete!"
echo ""
echo "To activate the environment, run:"
echo "  source nikola/bin/activate"
echo ""
echo "To build the site, run:"
echo "  export LC_ALL=C.UTF-8"
echo "  export LANG=C.UTF-8"
echo "  ./build.sh"
