class Quot < Formula
  desc "A fast and flexible command-line tool that converts text input into escaped string literals"
  homepage "https://github.com/samwisely75/quot"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/samwisely75/quot/releases/download/v0.1.4/quot-macos-x64"
      sha256 "8e381225e1dd4cd4d8cfbf3f42b1bbdfb3b71dfb96eeeeb6fc70f4876701c8de"

      def install
        bin.install "quot-macos-x64" => "quot"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/samwisely75/quot/releases/download/v0.1.4/quot-macos-arm64"
      sha256 "d4929de12b2431a2222583dd156ecc45ff4021e0eb2523c715a2b6dc8e163e6f"

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
