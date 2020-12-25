function config() {
  # Navigate to the config file for a specific app
  cd "$XDG_CONFIG_HOM/$1"
}

function weather() {
  curl wttr.in/$1
}
