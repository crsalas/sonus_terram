#!/bin/bash

# Install Tcl/Tk using Homebrew
echo "Installing Tcl/Tk..."
brew install tcl-tk

# Install Python Tkinter
echo "Installing Python Tkinter..."
brew install python-tk

# Add Tcl/Tk to PATH and set environment variables
echo "Configuring environment variables..."
{
    echo 'export PATH="/usr/local/opt/tcl-tk/bin:$PATH"'
    echo 'export LDFLAGS="-L/usr/local/opt/tcl-tk/lib"'
    echo 'export CPPFLAGS="-I/usr/local/opt/tcl-tk/include"'
} >> ~/.zshrc

# Reload the shell configuration
echo "Reloading shell configuration..."
source ~/.zshrc

# Verify the installation by running a simple Tkinter script
echo "Verifying Tkinter installation..."
python3 -c "
import tkinter as tk
root = tk.Tk()
root.title('Tkinter Verification')
root.geometry('200x100')
label = tk.Label(root, text='Tkinter is working!')
label.pack()
root.mainloop()
"

echo "Tkinter installation and configuration complete."
