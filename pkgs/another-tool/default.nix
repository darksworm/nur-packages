{ stdenv, fetchurl }:

stdenv.mkDerivation {
  pname = "another-tool";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/example/another-tool/releases/download/v${version}/another-tool-${version}-linux-amd64.tar.gz";
    sha256 = "TODO: fill in";
  };

  installPhase = ''
    mkdir -p $out/bin
    cp another-tool $out/bin/
  '';

  meta = {
    description = "An example tool for the NUR repository";
    homepage = "https://github.com/example/another-tool";
    license = stdenv.lib.licenses.mit;
    platforms = stdenv.lib.platforms.linux;
  };
}