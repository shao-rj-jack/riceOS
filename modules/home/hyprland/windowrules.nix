{
  wayland.windowManager.hyprland.settings = {
    windowrulev2 = [
      "tag +settings, class:^(nm-applet|nm-connection-editor)$"
      "tag +settings, class:^(pavucontrol|org.pulseaudio.pavucontrol|com.saivert.pwvucontrol)$"
      "tag +terminal, class:^(kitty)$"

      "float, tag:settings*"

      "size 70% 70%, tag:settings*"

      "opacity 0.8 0.7, tag:settings*"
      "opacity 0.8 0.7, tag:terminal*"
    ];

    workspace = [
      "1,persistent:true"
      "special:special,defaultName:*"
    ];
  };
}
