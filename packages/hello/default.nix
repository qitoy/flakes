{ stdenv, lib, source, ... }:

stdenv.mkDerivation rec {
  inherit (source) pname version src;
  passthru = { runnable = true; };
}
