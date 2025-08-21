{ stdenv, fetchurl }:

stdenv.mkDerivation {
  pname = "my-cli";
  version = "2.1.0";

  src = fetchurl {
    url = "https://github.com/example/my-cli/releases/download/v${version}/my-cli-${version}-linux-amd64.tar.gz";
    sha256 = "TODO: fill in";
  };

  installPhase = ''
    mkdir -p $out/bin
    cp my-cli $out/bin/
  '';

  meta = {
    description = "A custom CLI tool";
    homepage = "https://github.com/example/my-cli";
    license = stdenv.lib.licenses.mit;
    platforms = stdenv.lib.platforms.linux;
  };
}