{ stdenv, source, unzip }: stdenv.mkDerivation rec{
  inherit (source) pname version src;

  nativeBuildInputs = [ unzip ];

  installPhase = ''
    runHook preInstall
    unzip $src
    install -Dm644 *.ttf -t $out/share/fonts/${pname}
    runHook postInstall
  '';
}
