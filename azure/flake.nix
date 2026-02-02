{
  description = "Azure CLI and tools for DevOps";
  
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
          azure-cli = pkgs.azure-cli;
          azure-functions-core-tools = pkgs.azure-functions-core-tools-8;
          azure-static-web-apps-cli = pkgs.azure-static-web-apps-cli;
          terraform = pkgs.terraform;
          terragrunt = pkgs.terragrunt;
          kubectl = pkgs.kubernetes;
          helm = pkgs.helm;
          k9s = pkgs.k9s;
        };
        
        devShells.default = pkgs.mkShell {
          name = "azure-devops";
          buildInputs = with pkgs; [
            azure-cli
            azure-functions-core-tools-8
            azure-static-web-apps-cli
            terraform
            terragrunt
            kubernetes
            helm
            k9s
            gh
            git
          ];
        };
      }
    );
}
