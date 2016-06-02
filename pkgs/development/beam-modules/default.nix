{ stdenv, pkgs }:

let
  self = rec {
    hexPackages = import ./hex-packages.nix { stdenv = stdenv; callPackage = self.callPackage; pkgs = pkgs; };
    callPackage = pkgs.lib.callPackageWith (pkgs // self // hexPackages);
    buildRebar3 = callPackage ./build-rebar3.nix {};
    buildHex = callPackage ./build-hex.nix {};
    buildErlangMk = callPackage ./build-erlang-mk.nix {};
    buildMix = callPackage ./build-mix.nix {};

    ## Non hex packages
    comeonin = callPackage ./comeonin {};
    hex = callPackage ./hex {};
    webdriver = callPackage ./webdriver {};
    elli = callPackage ./elli {};
  };
in self // self.hexPackages
