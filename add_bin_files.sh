#!/bin/bash

# Function to install bin files
install_bin_files() {
  echo "removing old bin files (THIS WONT BREAK YOUR SYSTEM DONT WORRY)"

  # Find all files in bin_files directory
  for file in ./bin_files/*; do
    # Extract just the filename without path
    filename=$(basename "$file")

    # Remove old file if it exists
    sudo rm -f "usr/local/bin/$filename"

    echo "Installing $filename"
    # Copy the file to /bin
    sudo cp "$file" "/usr/local/bin/$filename"
    # Make it executable
    sudo chmod +x "/usr/local/bin/$filename"
  done

  echo "All bin files have been installed successfully!"
}

# Run the function
install_bin_files
