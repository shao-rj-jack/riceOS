{pkgs, ...}:

{
  programs.kitty = {
    enable = true;

    settings = {
      font_size = 12;
      wheel_scroll_min_lines = 1;
      window_padding_width = 4;
      confirm_os_window_close = 0;
      scrollback_lines = 10000;
      enable_audio_bell = false;
      mouse_hide_wait = 60;
      tab_fade = 1;
      active_tab_font_style = "bold";
      inactive_tab_font_style = "bold";
      tab_bar_edge = "top";
      tab_bar_margin_width = 0;
      tab_bar_style = "powerline";
      enabled_layouts = "splits";
    };

    extraConfig = ''
      # Window Management
      map alt+n            new_window_with_cwd
      map alt+w            close_window
      map ctrl+shift+enter launch --location=hsplit
      map ctrl+shift+s     launch --location=vsplit
      map ctrl+shift+[     previous_window
      map ctrl+shift+]     next_window
      map ctrl+shift+f     move_window_forward
      map ctrl+shift+b     move_window_backward
      map ctrl+shift+`     move_window_top

      # Tab Management
      map ctrl+shift+t     new_tab
      map ctrl+shift+q     close_tab
      map ctrl+shift+left  previous_tab
      map ctrl+shift+right next_tab
      map ctrl+shift+,     move_tab_forward
      map ctrl+shift+.     move_tab_backward
      map ctrl+shift+l     next_layout

      # Font Sizing
      map ctrl+shift+up        increase_font_size
      map ctrl+shift+down      decrease_font_size
      map ctrl+shift+backspace restore_font_size
    '';
  };
}
