class Quot < Formula
  desc "A fast and flexible command-line tool that converts text input into escaped string literals"
  homepage "https://github.com/samwisely75/quot"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/samwisely75/quot/releases/download/v0.1.6/quot-macos-x64"
      sha256 "e996216ed8b7c2271951101c7a08293b0fd9843c4ce340a85b63e623df4502a9"

      def install
        bin.install "quot-macos-x64" => "quot"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/samwisely75/quot/releases/download/v0.1.6/quot-macos-arm64"
      sha256 "123f1818fba4184e2d44168a89ba9c6fef6f8c52a4c30fe909e8b0a4138f4cc9"

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
