{ pkgs, ... }:

{
  home.username = "your-username";
  home.homeDirectory = "/home/your-username";

  programs.home-manager.enable = true;


  # MIME type associations
  xdg.mimeApps = {
    "application/pdf" = "zathura.desktop";
  };

  # Optional: ensure the zathura desktop file is present
  home.file.".local/share/applications/zathura.desktop".text = ''
    [Desktop Entry]
    Name=Zathura
    Exec=zathura %f
    Terminal=false
    Type=Application
    MimeType=application/pdf;
    NoDisplay=false
    Categories=Office;Viewer;
    StartupNotify=true
  '';

  # Additional configurations as needed...
}

