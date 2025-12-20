{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "danidiaz";
  home.homeDirectory = "/home/danidiaz";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [

    # scripting
    pkgs.lua
    pkgs.python315

    # archives
    pkgs.zip
    pkgs.xz
    pkgs.unzip

    # networking tools
    pkgs.iproute2
    pkgs.mtr # A network diagnostic tool
    pkgs.iperf3
    pkgs.dnsutils # `dig` + `nslookup`
    pkgs.socat # replacement of openbsd-netcat
    pkgs.nmap # A utility for network discovery and security auditing
    pkgs.ipcalc # it is a calculator for the IPv4/v6 addresses

    # misc
    pkgs.cowsay
    pkgs.file
    pkgs.which
    pkgs.tree
    pkgs.gnused
    pkgs.gnutar
    pkgs.gawk
    pkgs.zstd

    pkgs.btop # replacement of htop/nmon
    pkgs.iotop # io monitoring
    pkgs.iftop # network monitoring

    # system call monitoring
    pkgs.strace # system call monitoring
    pkgs.ltrace # library call monitoring
    pkgs.lsof # list open files

    # system tools
    pkgs.sysstat
    pkgs.lm_sensors # for `sensors` command
    pkgs.ethtool
    pkgs.pciutils # lspci
    pkgs.usbutils # lsusb

    # formatters
    pkgs.nixfmt
    pkgs.ormolu 

    pkgs.watchexec

    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {

    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  home.sessionPath = [
    # ghcup is installed separately, but we include the path here
    "$HOME/.ghcup/bin/"
    # ditto for Claude and other tools
    "$HOME/.local/bin"
  ];

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/danidiaz/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # setting PS1 here doesn't work so well, it gets erased when launching tmux
    # see programs.bash.sessionVariables
    # PS1 = "\\[\\033[01;34m\\]\\W\\[\\033[00m\\]\$ ";
    # EDITOR = "emacs";
  };

  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
    "nix-direnv".enable = true;
  };

  programs.jq = {
    enable = true;
  };

  programs.fzf = {
    enable = true;
    enableBashIntegration = true;
    colors = builtins.fromJSON (builtins.readFile ./fzf-colors-red.json);
  };

  programs.ripgrep = {
    enable = true;
    arguments = [
      "--colors=line:style:bold"
      "--smart-case"
    ];
  };

  programs.vim = {
    enable = true;
    defaultEditor = true;
    packageConfigurable = pkgs.vim;
    extraConfig = builtins.readFile ../.vimrc;
    plugins = [
      # is this one really for neovim?
      # pkgs.vimPlugins.fzf-wrapper
      pkgs.vimPlugins.fzf-vim
      pkgs.vimPlugins.vim-surround
      pkgs.vimPlugins.vim-textobj-entire
      pkgs.vimPlugins.vim-sneak
    ];
  };

  programs.dircolors = {
    enable = true;
    enableBashIntegration = true;
  };

  programs.git = {
    enable = true;

    settings = import ./git-config.nix;
  };

  programs.jujutsu = {
    enable = true;

    settings = builtins.fromTOML (builtins.readFile ./jujutsu-config.toml);
  };

  programs.tmux = {
    enable = true;
    # TODO: perhaps turn it into the map-like configuration style?
    extraConfig = builtins.readFile ../.tmux.conf;
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;

    sessionVariables = {
      PS1 = "\\[\\033[01;34m\\]\\W\\[\\033[00m\\]\$ ";
    };

    # TODO add your custom bashrc here
    # bashrcExtra = ''
    #   export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
    # '';

    # # To avoid losing access to the single-user nix installation
    # profileExtra = ''
    #   if [ -e "$HOME/.nix-profile/etc/profile.d/nix.sh" ]; then
    #     . "$HOME/.nix-profile/etc/profile.d/nix.sh"
    #   fi
    # '';

    # set some aliases, feel free to add more or remove some
    shellAliases = {
      l = "ls -CF";
      la = "ls -A";
      ll = "ls -alF";
      ls = "ls --color=auto";
      # k = "kubectl";
      # urldecode = "python3 -c 'import sys, urllib.parse as ul; print(ul.unquote_plus(sys.stdin.read()))'";
      # urlencode = "python3 -c 'import sys, urllib.parse as ul; print(ul.quote_plus(sys.stdin.read()))'";
    };
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
