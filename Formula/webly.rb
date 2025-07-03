class Webly < Formula
  desc "A flexible HTTP client with profile support"
  homepage "https://github.com/samwisely75/webly"
  url "https://github.com/samwisely75/webly/archive/refs/tags/v0.1.13.tar.gz"
  sha256 ""
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "webly #{VERSION}", shell_output("#{bin}/webly --version")
  end
end
