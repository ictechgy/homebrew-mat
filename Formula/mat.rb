class Mat < Formula
  desc "여러 AI CLI(Claude Code, Codex, Gemini/Antigravity) 계정을 하나의 TUI에서 전환"
  homepage "https://github.com/ictechgy/multi-account-tool"
  url "https://registry.npmjs.org/multi-account-tool/-/multi-account-tool-0.4.1.tgz"
  sha256 "6d00abfbb0c44e5f472d1aca215729fbf16fbb19fe82f2053e2498f0fc7ba279"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(prefix: libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_path_exists bin/"mat"
    assert_predicate bin/"mat", :executable?
  end
end
