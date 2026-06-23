{ pkgs ? import <nixpkgs> {} }:
pkgs.stdenv.mkDerivation {

  pname = "bashquote";
  version = "1.0.0";

  src = pkgs.fetchFromGitHub {
    owner = "harbiinger";
    repo = "bashquote";
    rev = "main";
    hash = "sha256-QwbT1LTr6olulhkLRLgzl0ew3jTRPawApgc9FCym0iQ=";
  };

  nativeBuildInputs = [ pkgs. makeWrapper ];

  installPhase = ''
    mkdir -p $out/bin 
    mkdir -p $out/share/bashquote/quotes 

    cp -r quotes/* $out/share/bashquote/quotes/ 

    cp bashquote $out/bin/bashquote 
    chmod +x $out/bin/bashquote 

    wrapProgram $out/bin/bashquote \
      --prefix PATH : ${pkgs.lib.makeBinPath [
        pkgs.coreutils
        pkgs.ncurses
        pkgs.gnugrep
        pkgs.gawk
        pkgs.gnused
      ]}
  '';

}
