{pkgs, ...}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    initContent = ''
      eval "$(${pkgs.oh-my-posh}/bin/oh-my-posh init zsh --config ${./oh-my-posh.toml})"
      fastfetch
    '';

    shellAliases = {
      v = "nvim";
      os-home = "cd ~/riceOS";
      os-rebuild = "os-home && sudo nixos-rebuild switch --flake \'.#riceOS\'";
      os-update = "sudo nix flake update && os-rebuild";
      os-ncg = "nix-collect-garbage --delete-old && sudo nix-collect-garbage -d && sudo /run/current-system/bin/switch-to-configuration boot";
    };
  };
}
