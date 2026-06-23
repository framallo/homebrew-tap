class Kab < Formula
  desc "EPUB/chapters -> chaptered m4b audiobooks with Kokoro TTS on Apple Silicon"
  homepage "https://github.com/framallo/kokoro-audiobook-mcp"
  version "0.1.0"
  license "MIT"

  # macOS arm64 only (Apple Neural Engine).
  url "https://github.com/framallo/kokoro-audiobook-mcp/releases/download/v0.1.0/kab-macos-arm64"
  sha256 "895f3c569439d6dd581ed538c7f6880f79229305e6540bfedda8d5686d654878"

  depends_on "ffmpeg"
  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "kab-macos-arm64" => "kab"
  end

  def caveats
    <<~EOS
      kab needs the kokoro-coreml engine + CoreML models at runtime.
      Get them once and point kab at the repo:

        git clone https://github.com/framallo/kokoro-coreml.git
        cd kokoro-coreml && uv sync
        uv run python scripts/download_models.py --coreml
        export KOKORO_COREML_REPO=$(pwd)   # or: kab config set kokoroRepo $(pwd)
    EOS
  end

  test do
    assert_match "kab", shell_output("#{bin}/kab --help 2>&1", 0)
  end
end
