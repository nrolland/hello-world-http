echo  "nipkgs version :" $(nix-instantiate --eval -E '(import <nixpkgs> {}).lib.version')
nix shell --impure --expr "with import <nixpkgs> { };haskellPackages.ghcWithPackages(p: with p; [network HTTP conduit conduit-extra])" --command runghc -v helloworld.hs
