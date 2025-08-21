{ pkgs ? import <nixpkgs> {} }:

{
  argonaut = pkgs.callPackage ./pkgs/argonaut { };
  another-tool = pkgs.callPackage ./pkgs/another-tool { };
  my-cli = pkgs.callPackage ./pkgs/my-cli { };
}