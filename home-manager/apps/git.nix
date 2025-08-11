{ config, pkgs, ...}:

{
  home.packages = [ pkgs.git ];
  programs.git.enable = true;
  programs.git.userName = "sijanthapa171";
  programs.git.userEmail = "thapasijan329@gmail.com";
  programs.git.extraConfig = {
    init.defaultBranch = "main";
    core.editor = "nvim";
  };
}