echo  "nipkgs version :" $(nix-instantiate --eval -E '(import <nixpkgs> {}).lib.version')
$(nix-build -E "with import <nixpkgs> { };nodejs")/bin/node helloworld.js
