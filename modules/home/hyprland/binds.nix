{
  wayland.windowManager.hyprland.settings = {
    "$modifier" = "SUPER";
    bind = [
      "$modifier,Return,exec,kitty"
      "$modifier,P,pseudo,"
      "$modifier,Q,killactive,"
      "$modifier,W,exec,firefox"
      "ALT,Tab,cyclenext"
      "ALT,Tab,bringactivetotop"
    ];

    bindm = [
      "$modifier,mouse:272,movewindow"
      "$modifier,mouse:273,resizewindow"
    ];
  };
}
