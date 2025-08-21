{ pkgs ? import <nixpkgs> {} }:

{
  argonaut = pkgs.callPackage ./pkgs/argonaut { };
}