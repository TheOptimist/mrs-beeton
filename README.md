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

## Inspiration

https://hugoreeves.com/posts/2019/nix-home
https://github.com/HugoReeves/nix-home

https://luca.cambiaghi.me/nix-package-manager
https://github.com/lccambiaghi/nixpkgs

https://lucperkins.dev/blog/home-manager
https://github.com/lucperkins/nix-home-config

https://github.com/kalbasit/shabka

https://github.com/kclejeune/system

https://github.com/malob/nixpkgs
