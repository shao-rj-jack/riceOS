{pkgs, ...}: {
  home.packages = [
    (import ./list-keybinds.nix {inherit pkgs;})
    (import ./rofi-launcher.nix {inherit pkgs;})
  ];
}
