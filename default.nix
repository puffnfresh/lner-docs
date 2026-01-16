{
  pkgs ? import <nixpkgs> { },
}:

pkgs.stdenv.mkDerivation {
  name = "EscortEV.pdf";

  src = ./.;

  nativeBuildInputs = [
    pkgs.texliveFull
  ];

  installPhase = ''
    latexmk -pdf Thermal.tex
    mv Thermal.pdf $out	
  '';
}
