class Quot < Formula
  desc "A fast and flexible command-line tool that converts text input into escaped string literals"
  homepage "https://github.com/samwisely75/quot"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/samwisely75/quot/releases/download/v0.1.7/quot-macos-x64"
      sha256 "c16684077ac6336c07d0639ffa8a1d31fe23021cd43133be0c7bbd30ec020c1d"

      def install
        bin.install "quot-macos-x64" => "quot"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/samwisely75/quot/releases/download/v0.1.7/quot-macos-arm64"
      sha256 "e3891cf9c160f3d4659b479fbcab0dd798ac149e3b57cd3237a4d003d7d4dbd8"

      def install
        bin.install "quot-macos-arm64" => "quot"
      end
    end
  end

  test do
    output = shell_output("#{bin}/quot --version 2>&1").strip
    assert_match version.to_s, output
    assert_equal "\"Hello World\n\"", shell_output("echo 'Hello World' | #{bin}/quot --format double").strip
  end
end
