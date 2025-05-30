{pkgs}:
pkgs.writeShellScriptBin "list-keybinds" ''
  # kill any existing rofi instances
  if pidof rofi > /dev/null; then
    pkill rofi
  fi

  # grep for hyprland keybinds
  keybinds=$(cat ~/.config/hypr/hyprland.conf | grep -E '^bind')

  # replace "$modifier" with "SUPER" to be displayed
  display_keybinds=$(echo "$keybinds" | sed 's/\$modifier/SUPER/g')

  # use rofi to display the binds
  echo "$display_keybinds" | rofi -dmenu -i -config ~/.config/rofi/config-long.rasi
''
