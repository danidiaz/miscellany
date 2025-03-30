# nixos WSL

- Using [NixOS-WSL](https://github.com/nix-community/NixOS-WSL).

- I've chosen the approach described
  [here](https://nixos-and-flakes.thiscute.world/nixos-with-flakes/other-useful-tips#managing-the-configuration-with-git)
of linking `/etc/nixos` to a git repo.

  ```
  git clone git@github.com:danidiaz/miscellany.git
  sudo mv /etc/nixos /etc/nixos.bak
  sudo ln -s ~/miscellany/linux/nixos-config-wsl/ /etc/nixos 
  sudo nixos-rebuild switch
  ```

- I've also choose to create my git, tmux... config files using `home.file`,
  instead of using `programs.git`, `programs.tmux`... good idea? Bad?

# Links

- [NixOS-WSL](https://github.com/nix-community/NixOS-WSL).

- [NixOS & Flakes Book](https://nixos-and-flakes.thiscute.world/)
    
    - This book is very good.

    - [Home Manager vs NixOS](https://nixos-and-flakes.thiscute.world/nixos-with-flakes/start-using-home-manager#home-manager-vs-nixos)

- [home-manager](https://github.com/nix-community/home-manager)

    - [Home Manager flake as a NixOS module](https://nix-community.github.io/home-manager/index.xhtml#sec-flakes-nixos-module).


