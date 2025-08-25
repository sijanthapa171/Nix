{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";

    # Mouse bindings.
    bindm = [
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
    ];

    bind = [
      # Window/Session actions.
      "$mod, Q, killactive,"
      "$mod, W, fullscreen,"
      "$mod, E, togglefloating,"
      "$mod, delete, exit,"

      # Dwindle
      "$mod, O, togglesplit,"
      "$mod, P, pseudo,"

      # Application shortcuts.
      "$mod, Return, exec, kitty"
      "$mod, D, exec, neovide"
      "$mod, F, exec, firefox"

      # Launcher
      "$mod, A, exec, rofi -show drun -kb-cancel Super_L"
      "$mod, S, exec, rofi -show run -kb-cancel Super_L"

      # Screenshot
      "$mod SHIFT, S, exec, wl-copy < $(grimshot --notify save area $XDG_PICTURES_DIR/Screenshots/$(TZ=utc date +'screenshot_%Y-%m-%d-%H%M%S.%3N.png'))"

      # Move window focus with vim keys.
      "$mod, h, movefocus, l"
      "$mod, l, movefocus, r"
      "$mod, k, movefocus, u"
      "$mod, j, movefocus, d"

      # Music control
      "$mod ALT, k, exec, pulsemixer --change-volume +5"
      "$mod ALT, j, exec, pulsemixer --change-volume -5"
      "$mod ALT, m, exec, pulsemixer --toggle-mute"
      "$mod ALT, l, exec, hyprmusic next"
      "$mod ALT, h, exec, hyprmusic previous"
      "$mod ALT, p, exec, hyprmusic play-pause"

      # Swap windows with vim keys
      "$mod SHIFT, h, swapwindow, l"
      "$mod SHIFT, l, swapwindow, r"
      "$mod SHIFT, k, swapwindow, u"
      "$mod SHIFT, j, swapwindow, d"

      # Move monitor focus.
      "$mod, TAB, focusmonitor, +1"

      # Switch workspaces.
      "$mod,1,exec,hyprworkspace 1"
      "$mod,2,exec,hyprworkspace 2"
      "$mod,3,exec,hyprworkspace 3"
      "$mod,4,exec,hyprworkspace 4"
      "$mod,5,exec,hyprworkspace 5"
      "$mod,6,exec,hyprworkspace 6"
      "$mod,7,exec,hyprworkspace 7"
      "$mod,8,exec,hyprworkspace 8"
      "$mod,9,exec,hyprworkspace 9"

      # Move active window to a workspace.
      "$mod SHIFT, 1, movetoworkspace, 1"
      "$mod SHIFT, 2, movetoworkspace, 2"
      "$mod SHIFT, 3, movetoworkspace, 3"
      "$mod SHIFT, 4, movetoworkspace, 4"
      "$mod SHIFT, 5, movetoworkspace, 5"
      "$mod SHIFT, 6, movetoworkspace, 6"
      "$mod SHIFT, 7, movetoworkspace, 7"
      "$mod SHIFT, 8, movetoworkspace, 8"
      "$mod SHIFT, 9, movetoworkspace, 9"
      "$mod SHIFT, 0, movetoworkspace, 10"

      # Scroll through existing workspaces with mod + scroll
      "$mod, mouse_down, workspace, e+1"
      "$mod, mouse_up, workspace, e-1"
    ];
  };
}
