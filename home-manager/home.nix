{
  imports = [
    ./zsh.nix
    ./modules/bundle.nix
    ./gtk.nix
  ];

  home = {
    username = "rohitj";
    homeDirectory = "/home/rohitj";
    stateVersion = "23.11";
  };
}
