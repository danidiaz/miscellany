{ config, pkgs, ... }:

{
  # NOTE(danididaz) I've commented this part because the user name is already mentioned
  # in flake.nix when invoking home-manager, in home-manager.users.nixos.
  # so maybe this bit here is redundant?
  #
  # TODO please change the username & home directory to your own
  # home.username = "nixos";
  # home.homeDirectory = "/home/nixos";

  # link the configuration file in current directory to the specified location in home directory
  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;

  home.file.".config/git/config" = {
    source = ../.gitconfig;
    # recursive = true;
  };

  home.file.".config/tmux/tmux.conf" = {
    source = ../.tmux.conf;
    # recursive = true;
  };

  # link all files in `./scripts` to `~/.config/i3/scripts`
  # home.file.".config/i3/scripts" = {
  #   source = ./scripts;
  #   recursive = true;   # link recursively
  #   executable = true;  # make all files executable
  # };

  # encode the file content in nix configuration file directly
  # home.file.".xxx".text = ''
  #     xxx
  # '';

  # set cursor size and dpi for 4k monitor
  # xresources.properties = {
  #   "Xcursor.size" = 16;
  #   "Xft.dpi" = 172;
  # };

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [

    # tmux

    # archives
    zip
    xz
    unzip

    # utils
    ripgrep # recursively searches directories for a regex pattern
    jq # A lightweight and flexible command-line JSON processor
    fzf # A command-line fuzzy finder

    # networking tools
    mtr # A network diagnostic tool
    iperf3
    dnsutils  # `dig` + `nslookup`
    socat # replacement of openbsd-netcat
    nmap # A utility for network discovery and security auditing
    ipcalc  # it is a calculator for the IPv4/v6 addresses

    # misc
    cowsay
    file
    which
    tree
    gnused
    gnutar
    gawk
    zstd

    btop  # replacement of htop/nmon
    iotop # io monitoring
    iftop # network monitoring

    # system call monitoring
    strace # system call monitoring
    ltrace # library call monitoring
    lsof # list open files

    # system tools
    sysstat
    lm_sensors # for `sensors` command
    ethtool
    pciutils # lspci
    usbutils # lsusb
  ];

  # # basic configuration of git, please change to your own
  # programs.git = {
  #   enable = true;
  #   userName = "Daniel Díaz";
  #   userEmail = "diaz_carrete@yahoo.com";
  # };

  programs.bash = {
    enable = true;
    enableCompletion = true;
    # TODO add your custom bashrc here
    # bashrcExtra = ''
    #   export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
    # '';

    # # set some aliases, feel free to add more or remove some
    # shellAliases = {
    #   k = "kubectl";
    #   urldecode = "python3 -c 'import sys, urllib.parse as ul; print(ul.unquote_plus(sys.stdin.read()))'";
    #   urlencode = "python3 -c 'import sys, urllib.parse as ul; print(ul.quote_plus(sys.stdin.read()))'";
    # };
  };

  # programs.tmux = {
  #   enable = true;
  #   extraConfig = 
  #     ''
  #       # https://superuser.com/a/1650961/185034
  #       # https://stackoverflow.com/a/64901851
  #       set -g default-terminal "xterm-256color"
  #       # https://gitlab.com/gnachman/iterm2/-/wikis/tmux-Integration-Best-Practices
  #       set-option -g allow-passthrough on
  #       unbind C-b
  #       set -g prefix C-j
  #       # http://superuser.com/questions/552744/issues-reconfiguring-send-prefix-for-tmux
  #       bind-key C-j send-prefix
  #       set-window-option -g mode-keys vi
  #       # http://unix.stackexchange.com/questions/23138/esc-key-causes-a-small-delay-in-terminal-due-to-its-alt-behavior
  #       set -s escape-time 0
  #       # https://wiki.archlinux.org/index.php/tmux
  #       # http://blog.sanctum.geek.nz/vi-mode-in-tmux/
  #       # https://github.com/tmux/tmux/issues/754
  #       # bind-key -T copy-mode-vi 'v' send-keys -X begin-selection
  #       # bind-key -T copy-mode-vi 'y' send-keys -X copy-selection
  #       # bind-key -T copy-mode-vi 'Space' send-keys -X halfpage-down
  #       # bind-key -T copy-mode-vi 'Bspace' send-keys -X  halfpage-up
  #       # bind | split-window -h
  #       # bind - split-window -v
  #       # unbind '"'
  #       # unbind %
  #       # Better use o and ; instead.
  #       # bind h select-pane -L
  #       bind j select-pane -D
  #       bind k select-pane -U
  #       # bind l select-pane -R
  #       # bind -r H resize-pane -L 5
  #       # bind -r J resize-pane -D 5
  #       # bind -r K resize-pane -U 5
  #       # bind -r L resize-pane -R 5
  #       # bind-key M-p paste-buffer
  #       # bind-key M-0 select-pane -t 0
  #       # bind-key M-6 select-pane -t 1
  #       # bind-key M-7 select-pane -t 2
  #       # bind-key M-8 select-pane -t 3
  #       # bind-key M-9 select-pane -t 4
  #       # experiment for quick switching
  #       # http://superuser.com/questions/484427/tmux-what-does-bind-key-r-mean
  #       bind-key -r o select-pane -t :.+
  #     '';
  # };

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.11";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}
