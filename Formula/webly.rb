class Webly < Formula
  desc "A flexible HTTP client with profile support"
  homepage "https://github.com/samwisely75/webly"
  version "0.1.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/samwisely75/webly/releases/download/v0.1.14/webly-macos-arm64"
      sha256 ""
    end
    on_intel do
      url "https://github.com/samwisely75/webly/releases/download/v0.1.14/webly-macos-x64"
      sha256 ""
    end
  end

  def install
    bin.install Dir["*"].first => "webly"
  end

  test do
    assert_match "webly #{version}", shell_output("#{bin}/webly --version")
  end
end
