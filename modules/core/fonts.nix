{pkgs, ...}: {
  fonts = {
    packages = with pkgs; [
      fira-code
      fira-code-symbols
      font-awesome
      material-icons
      nerd-fonts.jetbrains-mono
      noto-fonts-cjk-sans
      noto-fonts-emoji
      symbola
    ];
  };
}
