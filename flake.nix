{
  description = "Python 3 development environment with pip";

  inputs.nixpkgs.url = "nixpkgs/nixos-unstable";  # Update as needed

  outputs = { self, nixpkgs }: {

    devShell.x86_64-linux = with nixpkgs.legacyPackages.x86_64-linux; mkShell {
      buildInputs = [
        python3
        python3Packages.pip
      ];
    };

  };
}
