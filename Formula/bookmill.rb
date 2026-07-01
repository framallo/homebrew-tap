class Bookmill < Formula
  desc "Book publishing pipeline: Markdown to EPUB, print PDF, covers, audiobooks"
  homepage "https://github.com/framallo/bookmill"
  url "https://github.com/framallo/bookmill/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6d5b84578d25c4a57344ab04e4c54d1df2596ebb57bbdda457e6a40706089876"
  head "https://github.com/framallo/bookmill.git", branch: "master"

  # `nasm` is needed to compile mozjpeg-sys (SIMD); the interiors + covers are
  # otherwise pure Rust, so no LaTeX/pandoc/Chrome are required at build or run.
  depends_on "nasm" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "bookmill", shell_output("#{bin}/bookmill --help")
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/bookmill --version"))
  end
end
