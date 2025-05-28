{
  wayland.windowManager.hyprland.settings = {
    "$modifier" = "SUPER";
    bind = [
      # applications
      "$modifier,Return,exec,kitty"
      "$modifier,m,exec,pavucontrol"
      "$modifier,w,exec,firefox"

      # window control - basic
      "$modifier,f,fullscreen"
      "$modifier,i,togglesplit"
      "$modifier,p,pseudo,"
      "$modifier,q,killactive,"
      "$modifier SHIFT,f,togglefloating"
      "$modifier ALT,f,workspaceopt,allfloat"

      # window control - focus
      "$modifier,left,movefocus,l"
      "$modifier,down,movefocus,d"
      "$modifier,up,movefocus,u"
      "$modifier,right,movefocus,r"
      "$modifier,h,movefocus,l"
      "$modifier,j,movefocus,d"
      "$modifier,k,movefocus,u"
      "$modifier,l,movefocus,r"
      "ALT,Tab,cyclenext"
      "ALT,Tab,bringactivetotop"

      # window control - movement
      "$modifier SHIFT,left,movewindow,l"
      "$modifier SHIFT,down,movewindow,d"
      "$modifier SHIFT,up,movewindow,u"
      "$modifier SHIFT,right,movewindow,r"
      "$modifier SHIFT,h,movewindow,l"
      "$modifier SHIFT,j,movewindow,d"
      "$modifier SHIFT,k,movewindow,u"
      "$modifier SHIFT,l,movewindow,r"
      "$modifier ALT,left,swapwindow,l"
      "$modifier ALT,down,swapwindow,d"
      "$modifier ALT,up,swapwindow,u"
      "$modifier ALT,right,swapwindow,r"
      "$modifier ALT,h,swapwindow,l"
      "$modifier ALT,j,swapwindow,d"
      "$modifier ALT,k,swapwindow,u"
      "$modifier ALT,l,swapwindow,r"

      # special workspace
      "$modifier,SPACE,togglespecialworkspace"
      "$modifier SHIFT,SPACE,movetoworkspace,special"

      #change current workspace
      "$modifier,1,workspace,1"
      "$modifier,2,workspace,2"
      "$modifier,3,workspace,3"
      "$modifier,4,workspace,4"
      "$modifier,5,workspace,5"
      "$modifier,6,workspace,6"
      "$modifier,7,workspace,7"
      "$modifier,8,workspace,8"
      "$modifier,9,workspace,9"
      "$modifier CONTROL,left,workspace,e-1"
      "$modifier CONTROL,right,workspace,e+1"
      "$modifier,mouse_up,workspace,e-1"
      "$modifier,mouse_down,workspace,e+1"

      # move current window to selected workspace
      "$modifier SHIFT,1,movetoworkspace,1"
      "$modifier SHIFT,2,movetoworkspace,2"
      "$modifier SHIFT,3,movetoworkspace,3"
      "$modifier SHIFT,4,movetoworkspace,4"
      "$modifier SHIFT,5,movetoworkspace,5"
      "$modifier SHIFT,6,movetoworkspace,6"
      "$modifier SHIFT,7,movetoworkspace,7"
      "$modifier SHIFT,8,movetoworkspace,8"
      "$modifier SHIFT,9,movetoworkspace,9"

      # media keys
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
