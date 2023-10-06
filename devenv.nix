{ pkgs, flake-utils, ... }:

{
  # Python
  languages.python = {
    enable = true;
    venv.enable = true;
    poetry.enable = true;
  };
  

  # Rust
  languages.rust.enable = true;
  # https://devenv.sh/reference/options/#languagesrustchannel
  languages.rust.channel = "stable";
}
