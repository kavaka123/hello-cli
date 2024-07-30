class Hello < Formula
    desc "A simple 'hello world' program"
    homepage "https://github.com/kavaka123/hello-cli"
    url "https://github.com/kavaka123/hello-cli/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "fba8484ee6879a3329385f0a5f1965602beb36a064d5c87567b79a9c57d948bf"
    license "MIT"
  
    def install
      bin.install "dist/hello-macos"
    end
  
    test do
      assert_equal "Hello World!", shell_output("#{bin}/hello-macos").strip
      assert_equal "Hello John!", shell_output("#{bin}/hello-macos John").strip
    end
end