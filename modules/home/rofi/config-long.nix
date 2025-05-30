{
  home.file.".config/rofi/config-long.rasi".text = ''
    @import "~/.config/rofi/config.rasi"

    window {
      border-radius: 20px;
      background-color: @bg;
    }

    mainbox {
      children: [
        "inputbar",
        "listview"
      ];
    }

    inputbar {
      padding: 10px 10px;
      background-color: transparent;
      text-color: @foreground;

      children: [
        "textbox-prompt-colon",
        "entry"
      ];
    }

    textbox-prompt-colon {
      padding: 12px 20px;
      border-radius: 100%;
      background-color: @bg-alt;
      text-color: @foreground;
    }

    entry {
      expand: true;
      padding: 12px 16px;
      border-radius: 100%;
      background-color: @bg-alt;
      text-color: @foreground;
    }

    button {
      padding: 12px;
      border-radius: 100%;
    }

    element {
      spacing: 10px;
      padding: 12px;
      border-radius: 100%;
    }

    textbox {
      padding: 12px;
      border-radius: 100%;
    }
  '';
}
