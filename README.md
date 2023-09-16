# menu-bw

This is a fork of [Sife-ops/dmenu_bw](https://github.com/Sife-ops/dmenu_bw) to
include the following patches:

- Menu-agnostic (not tied to dmenu)
- Env vars in config
- Menu for auth instead of yad

## Configuration

JSON file should be in `${XDG_CONFIG_HOME:-$HOME/.config}/menu-bw/config.json`.
All fields are optional, with their defaults in the following example.

```jsonc
{
    "menu": {
        "cmd": "dmenu",
        "args": {
            "list": "-i -l 10", // When listing items
            "email": "-i", // During auth, reading bw account email
            "pass": "-i" // During auth, reading bw password
        }
    },
    "copyCmd": "xclip -i -selection clipboard",
    "editCmd": "xterm -e nano",
    "passwordGenCmd": "",
    "sessionKeyFile": ""
}
```

For the original README, check [ORIGINAL_README.md](./ORIGINAL_README.md).