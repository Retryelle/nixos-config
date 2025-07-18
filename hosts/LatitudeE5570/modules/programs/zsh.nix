{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    
    histSize = 10000;
    histFile = "$HOME/.zsh_history";

    enableLsColors = true;
    enableCompletion = true;
    
    shellInit = "";

    promptInit = ''
      prompt off
      eval "$(starship init zsh)"
    '';

    autosuggestions = {
      enable = true;
      async = true;
      strategy = [ "history" "completion" ];
    };

    syntaxHighlighting = {
      enable = true;
      highlighters = [ "main" "brackets" "cursor" "root" "line" ];
    };

    ohMyZsh = {
      enable = true;
      package = pkgs.oh-my-zsh;
      
      plugins = [
        "colored-man-pages"
        "extract"
        "fzf"
        "git"
        "sudo"
        "z"
      ];
    };
  };
}
