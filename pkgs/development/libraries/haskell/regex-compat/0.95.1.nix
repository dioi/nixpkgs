{ cabal, Cabal, regexBase, regexPosix }:

cabal.mkDerivation (self: {
  pname = "regex-compat";
  version = "0.95.1";
  sha256 = "0fwmima3f04p9y4h3c23493n1xj629ia2dxaisqm6rynljjv2z6m";
  buildDepends = [ Cabal regexBase regexPosix ];
  meta = {
    homepage = "http://sourceforge.net/projects/lazy-regex";
    description = "Replaces/Enhances Text.Regex";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [
      self.stdenv.lib.maintainers.andres
      self.stdenv.lib.maintainers.simons
    ];
  };
})
