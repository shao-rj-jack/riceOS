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
      base05 = "dbdfe2"; # grey white
      base06 = "d0eef2"; # off-white teal
      base07 = "e4e4e4"; # bright white
      base08 = "ea3511"; # red
      base09 = "a49011"; # dark yellow
      base0A = "b58a00"; # yellow
      base0B = "1ed079"; # green
      base0C = "6c9996"; # pale cyan
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
