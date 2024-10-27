#!/bin/bash
echo "Welcome to the Minecraft Resources Installer!"

while true; do
  echo
  echo "Please select the type of resource to install:"
  echo "1) Texture Pack"
  echo "2) Mod"
  echo "3) Data Pack"
  echo "4) Exit"
  read -p "Enter your choice: " choice

  case $choice in
    1)
      read -p "Enter the download URL for the texture pack: " url
      dest="$HOME/.minecraft/resourcepacks"
      echo "Downloading Texture Pack..."
      mkdir -p "$dest"
      curl -o "$dest/texturepack.zip" "$url"
      echo "Texture Pack installed successfully in $dest."
      ;;
    2)
      read -p "Enter the download URL for the mod: " url
      dest="$HOME/.minecraft/mods"
      echo "Downloading Mod..."
      mkdir -p "$dest"
      curl -o "$dest/mod.jar" "$url"
      echo "Mod installed successfully in $dest."
      ;;
    3)
      read -p "Enter the download URL for the data pack: " url
      read -p "Enter the name of your Minecraft world: " world
      dest="$HOME/.minecraft/saves/$world/datapacks"
      echo "Downloading Data Pack..."
      mkdir -p "$dest"
      curl -o "$dest/datapack.zip" "$url"
      echo "Data Pack installed successfully in $dest."
      ;;
    4)
      echo "Exiting installer."
      break
      ;;
    *)
      echo "Invalid choice. Please try again."
      ;;
  esac
done
