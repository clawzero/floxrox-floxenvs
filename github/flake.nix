{
  description = "GitHub CLI and developer tools";
  
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
          gh = pkgs.gh;
          gh-cli = pkgs.gh;
          act = pkgs.act;
          git = pkgs.git;
          git-lfs = pkgs.git-lfs;
          lazygit = pkgs.lazygit;
          delta = pkgs.delta;
        };
        
        devShells.default = pkgs.mkShell {
          name = "github-devops";
          buildInputs = with pkgs; [
            gh
            act
            git
            git-lfs
            lazygit
            delta
            python310
            python310Packages.pygithub
          ];
        };
      }
    );
}
