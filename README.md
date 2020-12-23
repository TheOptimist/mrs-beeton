# Mrs Beeton
My (currently) Darwin only nix configuration and home directory management. Inspired by the
legendary house manager [Isabella Beeton](https://en.wikipedia.org/wiki/Isabella_Beeton). So
inspired, that like her initial publications, an awful lot of this work is plagiarised from
other works.

## Usage
Mrs Beeton will install Command Line Tools, Nix and Nix Darwin and then clone herself into
`$HOME/.config` and execute `darwin-rebuild` to trigger the configuration.

Yolo!
> /bin/bash -c "$(curl https://raw.githubusercontent.com/TheOptimist/mrs-beeton/main/install)"


