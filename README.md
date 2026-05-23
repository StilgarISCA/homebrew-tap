# homebrew-tap
Homebrew formulae for StilgarISCA's projects.

## Install

```bash
brew tap StilgarISCA/tap
```

## Install Packages

```bash
brew install StilgarISCA/tap/bbsclient
```

After installation, run the client with:

```bash
bbs
```

## Packages

### Formulae

- `bbsclient` - Terminal client for ISCA and DOC BBS systems

## Update / Uninstall

```bash
brew update
brew upgrade bbsclient
```

```bash
brew uninstall bbsclient
```

## Notes

- The Homebrew build installs the `bbs` terminal client.
- The Homebrew build includes macOS Keychain support.
- The client is tested against ISCA BBS and should work with other Dave's Own Citadel (DOC) BBS systems, but is untested.
- Run `brew info StilgarISCA/tap/bbsclient` for formula details.

## Manual Cleanup

Homebrew formulae do not support `--zap`. To remove local client settings, delete:

```text
~/.config/bbs/
```

If `XDG_CONFIG_HOME` is set, delete:

```text
$XDG_CONFIG_HOME/bbs/
```
