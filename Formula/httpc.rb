class Httpc < Formula
  desc "A flexible HTTP client with profile support"
  homepage "https://github.com/samwisely75/httpc"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/samwisely75/httpc/releases/download/v0.2.0/httpc-macos-arm64"
      sha256 ""
    end
    on_intel do
      url "https://github.com/samwisely75/httpc/releases/download/v0.2.0/httpc-macos-x64"
      sha256 ""
    end
  end

  def install
    bin.install Dir["*"].first => "httpc"
  end

  test do
    assert_match "httpc #{version}", shell_output("#{bin}/httpc --version")
  end
end
