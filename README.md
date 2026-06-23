# framallo/homebrew-tap

Homebrew tap for [`kab`](https://github.com/framallo/kokoro-audiobook-mcp) — a
native Swift CLI that turns EPUBs into chaptered **m4b audiobooks** with Kokoro
TTS on Apple Silicon (Apple Neural Engine).

```bash
brew install framallo/tap/kab
```

macOS **arm64 only**. `kab` needs the kokoro-coreml engine + CoreML models at
runtime — see the formula caveats and the
[kab README](https://github.com/framallo/kokoro-audiobook-mcp#runtime-setup-engine--models).
