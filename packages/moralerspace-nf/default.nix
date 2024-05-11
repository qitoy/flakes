{ stdenv, mySource, unzip }: stdenv.mkDerivation rec{
  inherit (mySource) pname version src;

  nativeBuildInputs = [ unzip ];

  installPhase = ''
    runHook preInstall
    unzip $src
    install -Dm644 *.ttf -t $out/share/fonts/${pname}
    runHook postInstall
  '';
}
