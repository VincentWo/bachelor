# in flake.nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let
          pkgs = import nixpkgs {
            inherit system;
          };
          tex = (pkgs.texlive.combine {
            inherit (pkgs.texlive)
              scheme-medium biblatex tikz-cd stackengine chngcntr csquotes 
              latexmk standalone hobby animate preview media9 zref ocgx2
              tcolorbox environ tikzfill pdfcol;
          });
        in
        with pkgs; {
          devShells.default = mkShell {
            nativeBuildInputs = [
              tex
              biber
              texlab
            ];
          };
        }
      );
}