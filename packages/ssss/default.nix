{ stdenv, mySource, ncurses, ... }: stdenv.mkDerivation {
  inherit (mySource) pname version src;

  nativeBuildInputs = [ ncurses ];

  buildPhase = ''
  gcc -Wall -O2 -I ${ncurses}/include -L ${ncurses}/lib -o ssss -l ncurses ssss.c
  '';

  installPhase = ''
  mkdir -p $out/bin
  cp ssss $out/bin
  '';

  passthru = { runnable = true; };
}
