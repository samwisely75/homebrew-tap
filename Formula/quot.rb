class Quot < Formula
  desc "A fast and flexible command-line tool that converts text input into escaped string literals"
  homepage "https://github.com/samwisely75/quot"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/samwisely75/quot/releases/download/v0.1.4/quot-macos-x64"
      sha256 "PLACEHOLDER_X64_SHA256"

      def install
        bin.install "quot-macos-x64" => "quot"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/samwisely75/quot/releases/download/v0.1.4/quot-macos-arm64"
      sha256 "PLACEHOLDER_ARM64_SHA256"

      def install
        bin.install "quot-macos-arm64" => "quot"
      end
    end
  end

  test do
    output = shell_output("#{bin}/quot --version 2>&1").strip
    assert_match version.to_s, output
    assert_equal "\"Hello World\\n\"", shell_output("echo 'Hello World' | #{bin}/quot").strip
  end
end
