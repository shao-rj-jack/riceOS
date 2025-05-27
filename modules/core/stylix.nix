{pkgs, ...}: {
  stylix = {
    enable = true;
    image = ../../wallpapers/wooded-bay.jpg;
    polarity = "dark";

    base16Scheme = {
      base00 = "171d0f"; # black
      base01 = "264d54"; # super dark teal
      base02 = "307477"; # dark teal
      base03 = "6ba7af"; # teal
      base04 = "a0bfc2"; # pale teal
      base05 = "dbdfe2"; # grey white - main text
      base06 = "00ff00"; # off-white - usage unknown
      base07 = "0000ff"; # bright white - usage unknown
      base08 = "ea3511"; # red
      base09 = "a49011"; # dark yellow
      base0A = "b58a00"; # yellow
      base0B = "1ed079"; # green
      base0C = "6c9996"; # light blue
      base0D = "2583d1"; # blue
      base0E = "ff00f7"; # magenta
      base0F = "8b9806"; # green yellow
    };

    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };

    fonts = {
      serif = {
        package = pkgs.montserrat;
        name = "Montserrat";
      };

      sansSerif = {
        package = pkgs.montserrat;
        name = "Montserrat";
      };
    };
  };
}
