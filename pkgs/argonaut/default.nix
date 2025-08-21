{ stdenv, fetchurl }:

stdenv.mkDerivation {
  pname = "argonaut";
  version = "1.6.0";

  src = fetchurl {
    url = "https://github.com/darksworm/argonaut/releases/download/v${version}/argonaut-${version}-linux-amd64.tar.gz";
    sha256 = "TODO: fill in";
  };

  installPhase = ''
    mkdir -p $out/bin
    cp argonaut $out/bin/
  '';

  meta = {
    description = "A GitOps CLI tool for managing ArgoCD applications";
    homepage = "https://github.com/darksworm/argonaut";
    license = stdenv.lib.licenses.mit;
    platforms = stdenv.lib.platforms.linux;
  };
}