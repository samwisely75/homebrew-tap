class Httpc < Formula
  desc "A flexible HTTP client with profile support"
  homepage "https://github.com/samwisely75/httpc"
  version "0.2.0"
  license "Elastic-2.0"

  on_macos do
    on_arm do
      url "https://github.com/samwisely75/httpc/releases/download/v0.2.0/httpc-macos-arm64"
      sha256 "517136f58f90ec94d964142fc25fef9ec25f58c283c00a466f80d33428833055"
    end
    on_intel do
      url "https://github.com/samwisely75/httpc/releases/download/v0.2.0/httpc-macos-x64"
      sha256 "fdef95263cb4f38b787a79cbaa8037a2c5f0539f48590c5b93e8df75f3927148"
    end
  end

  def install
    bin.install Dir["*"].first => "httpc"
  end

  test do
    assert_match "httpc #{version}", shell_output("#{bin}/httpc --version")
  end
end
