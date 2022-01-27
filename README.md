# Hello-world with libraries (http server)

Regular "hello world" have no dependency.
This http hello world require some libraries.

This means getting a example running becomes non trivial.

Those scripts are
- zero install : everything is downloaded from the nix repository to your nix store. there is 0 pollution to your system.
- immediately runabble : the shell files just launch the program files as is

# Usage

- `./helloworldhs.sh` in one terminal
- ```curl localhost:8080``` in another

The alternative to nix is to setup each language specialized environnements (downloading compiler, configuration file, etc..).
