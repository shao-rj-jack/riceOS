{pkgs, ...}: {
  programs.waybar = {
    package = pkgs.waybar;
    enable = true;
  };
}
