 






# { config, pkgs, lib, ... }:

# let
#   cfg = config.modules.i3;
#   modifier = "Mod4";
#   terminal = "${pkgs.kitty}/bin/kitty";
#   menu = "rofi -show run";
# in
# {
#   options = {
#     modules.i3 = {
#       enable = lib.mkEnableOption "i3";

#       terminal = lib.mkOption {
#         type = lib.types.str;
#         default = terminal;
#       };

#       startupCommands = lib.mkOption {
#         type = lib.types.listOf lib.types.str;
#         default = [];
#       };

#       workspaces = lib.mkOption {
#         type = lib.types.listOf lib.types.attrs;
#         default = [];
#       };

#       withGaps = lib.mkOption {
#         type = lib.types.bool;
#         default = true;
#       };
#     };
#   };

#   config = lib.mkIf cfg.enable {
#     programs.i3 = {
#       enable = true;
#       package = if cfg.withGaps then pkgs.i3-gaps else pkgs.i3;
#       configFile = pkgs.writeText "i3-config" ''
#         set $mod ${modifier}

#         # Start a terminal
#         bindsym $mod+Return exec ${cfg.terminal}

#         # Kill focused window
#         bindsym $mod+Shift+q kill

#         # Change focus
#         bindsym $mod+h focus left
#         bindsym $mod+j focus down
#         bindsym $mod+k focus up
#         bindsym $mod+l focus right

#         # Move focused window
#         bindsym $mod+Shift+h move left
#         bindsym $mod+Shift+j move down
#         bindsym $mod+Shift+k move up
#         bindsym $mod+Shift+l move right

#         # Split orientation
#         bindsym $mod+v split v
#         bindsym $mod+b split h

#         # Launch applications
#         bindsym $mod+space exec ${menu}
#         bindsym $mod+d exec rofi -disable-history -show-icons -show drun
#         bindsym $mod+e exec emacsclient -a '' --create-frame --no-wait

#         # Define workspaces
#         ${lib.concatStringsSep "\n" (map (ws: ''
#           workspace ${ws.name}
#         '') cfg.workspaces)};

#         # Gaps
#         ${if cfg.withGaps then ''
#           gaps inner 50
#           gaps outer 0
#         '' else ''}
#       '';
#     };

#     home.packages = [ pkgs.i3status ];
#     xdg.configFile."i3status/config".source = ./i3status.config;
#   };
# }
{}