{
  pkgs ? import <nixpkgs> { },
}:

pkgs.stdenv.mkDerivation {
  name = "rathena";

  nativeBuildInputs = with pkgs; [
    pkg-config
    zlib
    pcre
  ];
  buildInputs = with pkgs; [ mariadb-embedded ];
}
