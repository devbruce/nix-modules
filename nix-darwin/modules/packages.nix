{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    zoxide
    neofetch
    tree
    neovim
    tmux
    direnv
    eza
    fzf
    k9s
    minikube
    jq
    yq
    bat
    gh
    htop
    httpie
    pyenv
    poetry
    pipx
  ];
}
