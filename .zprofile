export GOPATH="$HOME/go";
export GOROOT="$HOME/.go";
export BUN_INSTALL="/home/robin/.bun"
export PNPM_HOME="/home/robin/.local/share/pnpm"

declare -a BEFORE_EXPORT_PATHS=(
	"$HOME/.local/usr/bin"
	"$HOME/.local/bin"
	"$GOPATH/bin"
	"$HOME/go/bin"
    "$HOME/.bun/bin"
	"$HOME/.local/usr/local/bin"
    "$BUN_INSTALL/bin"
	"$PYENV_ROOT/bin"
)

declare -a AFTER_EXPORT_PATHS=(
    "$HOME/.Android/SDK/platform-tools"
	"$DENO_INSTALL/bin"
	"$HOME/.yarn/bin"
	"$PNPM_HOME"
	"$HOME/.cargo/bin"
    "$HOME/fvm/default/bin"
	"$HOME/fvm/default/.pub-cache/bin"
	"$HOME/fvm/default/bin/cache/dart-sdk/bin"
    "$HOME/.pub-cache/bin"
	"$HOME/.npm-global/bin/"
	"$HOME/.local/opt/android-studio/bin"
	"$HOME/.local/opt/miniconda3/bin"
)

for EXPORT_PATH in $BEFORE_EXPORT_PATHS; do
	export PATH="$EXPORT_PATH:$PATH"
done

for EXPORT_PATH in $AFTER_EXPORT_PATHS; do
	export PATH="$PATH:$EXPORT_PATH"
done

[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"
[[ "$TTY" == "/dev/tty1" ]] && exec startx -- -keeptty 2> /dev/null
