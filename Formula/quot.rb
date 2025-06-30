class Quot < Formula
  desc "A fast and flexible command-line tool that converts text input into escaped string literals"
  homepage "https://github.com/samwisely75/quot"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/samwisely75/quot/releases/download/v0.1.5/quot-macos-x64"
      sha256 "dc71406d960a37749b3fbfd96a828aef175e3419542e61fd47b159677f567ac6"

      def install
        bin.install "quot-macos-x64" => "quot"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/samwisely75/quot/releases/download/v0.1.5/quot-macos-arm64"
      sha256 "b1087528d52149cdd0a3b17fbf17d3ad35b6cd1b04fbdcb6133d48fc4569f2d2"

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
