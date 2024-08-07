{pkgs, ...}: let
  monolisa = pkgs.stdenvNoCC.mkDerivation {
    pname = "monolisa";
    version = "2.0";

    src = pkgs.fetchFromGitHub {
      owner = "kashfr";
      repo = "monolisa";
      rev = "9c5f4fb33a0005049e091d623f19b73f1e0f46cd";
      hash = "sha256-pY9yOD+7IwFyS1JfUV/utY5aDtkK4tTlw7EnDYz9Q6s=";
    };

    dontPatch = true;
    dontConfigure = true;
    dontBuild = true;
    doCheck = false;
    dontFixup = true;

    installPhase = ''
      runHook preInstall
      install -Dm644 -t $out/share/fonts/truetype/ fonts/*.ttf
      runHook postInstall
    '';
  };
in {
  home.packages =
    [monolisa]
    ++ (with pkgs; [
      monaspace
    ]);
}

