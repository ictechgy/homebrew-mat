class Mat < Formula
  desc "여러 AI CLI(Claude Code, Codex, Gemini/Antigravity) 계정을 하나의 TUI에서 전환"
  homepage "https://github.com/ictechgy/multi-account-tool"
  url "https://registry.npmjs.org/multi-account-tool/-/multi-account-tool-0.2.0.tgz"
  sha256 "bb80d3e0e3e010b09ddc32892658cb20fe95df12468d8ed7fc02ce6c6cd2a89d"
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
