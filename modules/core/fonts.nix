{pkgs, ...}: {
  fonts = {
    packages = with pkgs; [
      fira-code
      fira-code-symbols
      font-awesome
      material-icons
      noto-fonts-cjk-sans
      noto-fonts-emoji
      symbola
      nerd-fonts.jetbrains-mono
    ];
  };
}
