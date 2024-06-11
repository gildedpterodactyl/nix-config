{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = ["python-2.7.18.8" "electron-25.9.0"];
  };

  environment.systemPackages = with pkgs; [
    # Desktop apps
    # chromium
    # telegram-desktop
    alacritty
    # obs-studio
    rofi
    wofi
    upower
    mpv
    # kdenlive
    discord
    gparted
    # obsidian
    # zoom-us
    pcmanfm-qt
    spotify
    discord
    whatsapp-for-linux
    firefox
    gnome.nautilus
    nedit

    # Coding stuff
    gnumake
    gcc
    gdb
    nodejs_21
    python3
    (python3.withPackages (ps: with ps; [ requests ]))
    (vscode-with-extensions.override {
    	vscodeExtensions = with vscode-extensions; [
	    ms-python.python
	    ms-vscode.cpptools
	    vscode-icons-team.vscode-icons
	    dbaeumer.vscode-eslint
	    esbenp.prettier-vscode
	    formulahendry.auto-rename-tag
	    eamodio.gitlens
	    github.copilot
	    github.copilot-chat
	    divyanshuagrawal.competitive-programming-helper
	    cweijan.vscode-database-client2
	    ms-vscode.cmake-tools
	    ms-toolsai.vscode-jupyter-slideshow
	    ms-toolsai.vscode-jupyter-cell-tags
	    ms-toolsai.jupyter-renderers
	    ms-toolsai.jupyter-keymap
      bbenoist.nix
	  ];
	})

    # CLI utils
    neofetch
    file
    tree
    wget
    git
    # fastfetch
    htop
    nix-index
    unzip
    scrot
    # ffmpeg
    light
    # lux
    mediainfo
    ranger
    # zram-generator
    cava
    zip
    ntfs3g
    # yt-dlp
    brightnessctl
    swww
    openssl
    lazygit
    # bluez
    # bluez-tools
    fzf

    # GUI utils
    feh
    imv
    dmenu
    screenkey
    mako
    gromit-mpx

    # Xorg stuff
    #xterm
    #xclip
    #xorg.xbacklight

    # Wayland stuff
    xwayland
    wl-clipboard
    cliphist
    wlogout

    # WMs and stuff
    herbstluftwm
    hyprland
    seatd
    xdg-desktop-portal-hyprland
    # polybar
    # waybar
    ags
    hyprlock
    # siwaylock
    hypridle
    gvfs
    gtk4

    # Sound
    pipewire
    pulseaudio
    pamixer

    # GPU stuff 
    # amdvlk
    rocm-opencl-icd
    glaxnimate

    # Screenshotting
    grim
    grimblast
    slurp
    flameshot
    swappy
    
    #Some essentials 
    gnomeExtensions.vitals
    gnome-browser-connector
    efibootmgr
    killall
    socat
    jq
    zsh
    kitty

    # Other
    home-manager
    spice-vdagent
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5ct
    papirus-nord
    glib
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  ];
}
