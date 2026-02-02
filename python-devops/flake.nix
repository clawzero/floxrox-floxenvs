{
  description = "Python tools for DevOps and automation";
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  
  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in {
        packages = {
          python310 = pkgs.python310;
          python311 = pkgs.python311;
          python312 = pkgs.python312;
          python313 = pkgs.python313;
          pip = pkgs.pip;
          poetry = pkgs.poetry;
          pyenv = pkgs.pyenv;
        };
        
        devShells.default = pkgs.mkShell {
          name = "python-devops";
          buildInputs = with pkgs; [
            python312
            pip
            poetry
            pyenv
            docker-client
            kubernetes
            ansible
          ];
        };
      }
    );
}
