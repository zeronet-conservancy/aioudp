{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    (pkgs.python3.withPackages (ps: with ps; [
      pytest
    ]))
  ];

  shellHook = ''
    echo "Welcome to the aio-udp-server development environment!"
    echo "You can run your tests with: pytest"
  '';
}
