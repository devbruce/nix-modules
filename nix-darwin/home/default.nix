{ config, pkgs, username, ... }: {
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
  home.username = username;
  home.homeDirectory = pkgs.lib.mkForce "/Users/${username}";
  home.packages = with pkgs; [
    zsh-autosuggestions
    zsh-history-substring-search
    zsh-powerlevel10k
  ];
  home.file.".toolkits".source = ./toolkits;
  home.file.".p10k.zsh".source = ./dotfiles/.p10k.zsh;
  # ====================================================
  # == Tmux(Ref: https://github.com/tmux/tmux)
  # ====================================================
  home.file.".tmux/plugins/tpm" = {
    source = pkgs.fetchFromGitHub {
      owner = "tmux-plugins";
      repo = "tpm";
      rev = "master";
      sha256 = "sha256-hW8mfwB8F9ZkTQ72WQp/1fy8KL1IIYMZBtZYIwZdMQc=";
    };
  };
  home.file.".tmux.conf".source = ./dotfiles/.tmux/.tmux.conf;
  home.file.".tmux/.extra.conf".source = ./dotfiles/.tmux/.extra.conf;
  home.file.".tmux/.extra.plugins.conf".source = ./dotfiles/.tmux/.extra.plugins.conf;
  home.file.".tmux/.extra.catppuccin.conf".source = ./dotfiles/.tmux/.extra.catppuccin.conf;

  programs = {
    zsh = {
      enable = true;
      enableCompletion = true;
      syntaxHighlighting.enable = true;
      oh-my-zsh = {
        enable = true;
      };
      initExtra = ''
        # zsh-autosuggestions
        source ${pkgs.zsh-autosuggestions}/share/zsh-autosuggestions/zsh-autosuggestions.zsh
        # zsh-history-substring-search
        source ${pkgs.zsh-history-substring-search}/share/zsh-history-substring-search/zsh-history-substring-search.zsh
        # Activate p10k
        source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
        [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

        # .zshrc_extra
        if [ -f ~/.zshrc_extra ]; then
          source ~/.zshrc_extra
        fi
      '';
      shellAliases = {
        vi = "nvim";
        cat = "bat --theme=Dracula -p";
        l = "eza -al --icons=auto --git-repos-no-status";
        clear-caches = "find . | grep -E \"(__pycache__|\.pyc|\.pyo|\.DS_Store$)\" | xargs rm -rf";
        clear-empty-dirs = "find . -type d -empty -delete";
        # toolkits
        ssh-selector = "bash ~/.toolkits/ssh_selector.sh";
        branch-cleaner = "bash ~/.toolkits/branch_cleaner.sh";
        tsm = "bash ~/.toolkits/tmux_session_manager.sh";
      };
    };
    zoxide = {
      enable = true;
      enableZshIntegration = true;
    };
    bat = {
      enable = true;
    };
    fzf = {
      enable = true;
      enableZshIntegration = true;
    };
    direnv = {
      enable = true;
    };
  };
}
