{
  description = "Home Manager configuration of danidiaz";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    # nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nixpkgs.url = "flake:nixpkgs";
    home-manager = {
      url = "flake:home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      homeConfigurations."danidiaz" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        # Specify your home configuration modules here, for example,
        # the path to your home.nix.
        modules = [ ./home.nix ];

        # Optionally use extraSpecialArgs
        # to pass through arguments to home.nix
      };
    };
}
