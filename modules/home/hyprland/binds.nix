{
  wayland.windowManager.hyprland.settings = {
    "$modifier" = "SUPER";
    bind = [
      "$modifier,Return,exec,kitty"
      "$modifier,M,exec,pavucontrol"
      "$modifier,P,pseudo,"
      "$modifier,Q,killactive,"
      "$modifier,W,exec,firefox"

      "ALT,Tab,cyclenext"
      "ALT,Tab,bringactivetotop"

      ",XF86AudioRaiseVolume,exec,wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
      ",XF86AudioLowerVolume,exec,wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ",XF86AudioMicMute, exec, pamixer --default-source -t"
      ",XF86AudioPlay, exec, playerctl play-pause"
      ",XF86AudioPause, exec, playerctl play-pause"
      ",XF86AudioNext, exec, playerctl next"
      ",XF86AudioPrev, exec, playerctl previous"
      ",XF86MonBrightnessUp,exec,brightnessctl set 5%+"
      ",XF86MonBrightnessDown,exec,brightnessctl set 5%-"
    ];

    bindm = [
      "$modifier,mouse:272,movewindow"
      "$modifier,mouse:273,resizewindow"
    ];
  };
}
