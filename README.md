# framallo/homebrew-tap

Homebrew tap for framallo tools.

## [`bookmill`](https://github.com/framallo/bookmill)

A single-binary book publishing pipeline — Markdown in, KDP-ready EPUB, print
PDF, covers, and audiobooks out.

```bash
brew install framallo/tap/bookmill
```

Builds the CLI from source (Rust). The desktop app is packaged separately as a
cask (`brew install --cask framallo/tap/bookmill`) and goes live once a signed,
notarized DMG release is published.

## [`kab`](https://github.com/framallo/kokoro-audiobook-mcp)

A native Swift CLI that turns EPUBs into chaptered **m4b audiobooks** with Kokoro
TTS on Apple Silicon (Apple Neural Engine).

```bash
brew install framallo/tap/kab
```

macOS **arm64 only**. `kab` needs the kokoro-coreml engine + CoreML models at
runtime — see the formula caveats and the
[kab README](https://github.com/framallo/kokoro-audiobook-mcp#runtime-setup-engine--models).
