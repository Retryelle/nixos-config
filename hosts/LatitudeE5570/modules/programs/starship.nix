{ pkgs, ... }:
{
  programs.starship = {
    enable = true;
    package = pkgs.starship;
    enableZshIntegration = true;
    
    settings = {
      add_newline = false;
      
      format = ''
        [{](bold #bd93f9)$username[@](bold #ff79c6)$hostname[}:](bold #bd93f9)[{](bold #8be9fd)$directory[}](bold #8be9fd)
        $symbol
        
      '';

      username = {
        style_root = "bold #ff5555";
        style_user = "bold #ff79c6";
        format = "[$user]($style)";
        show_always = true;
        disabled = false;
      };

      hostname = {
        ssh_only = true;
        ssh_symbol = "{SSH}:";
        trim_at = "";
        format = "[$ssh_symbol$hostname]($style)";
        style = "bold #ff79c6";
        disabled = false;
      };

      directory = {
        truncation_length = 0;
        truncate_to_repo = false;
        format = "[$path]($style)[$read_only]($read_only_style)";
        style = "bold #8be9fd";
        disabled = false;
        read_only = "{!}";
        read_only_style = "bold #ff5555";
        truncation_symbol = "";
        home_symbol = "~";
        use_os_path_sep = true;
      };

      character = {
        format = "$symbol";
        success_symbol = "[>](bold #50fa7b)";
        error_symbol = "[>](bold #ff5555)";
        vimcmd_symbol = "[<](bold #50fa7b)";
        vimcmd_replace_one_symbol = "[<](bold #bd93f9)";
        vimcmd_replace_symbol = "[<](bold #bd93f9)";
        vimcmd_visual_symbol = "[<](bold #f1fa8c)";
        disabled = false;
      };
    };
  };
}
