class Hello < Formula
    desc "A simple 'hello world' program"
    homepage "https://github.com/kavaka123/hello-cli"
    url "https://github.com/kavaka123/hello-cli/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    license "MIT"
  
    def install
      bin.install "dist/hello-macos"
    end
  
    test do
      assert_equal "Hello World!", shell_output("#{bin}/hello-macos").strip
      assert_equal "Hello John!", shell_output("#{bin}/hello-macos John").strip
    end
end