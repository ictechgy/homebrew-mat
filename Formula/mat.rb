class Mat < Formula
  desc "여러 AI CLI(Claude Code, Codex, Gemini/Antigravity) 계정을 하나의 TUI에서 전환"
  homepage "https://github.com/ictechgy/multi-account-tool"
  url "https://registry.npmjs.org/multi-account-tool/-/multi-account-tool-0.9.0.tgz"
  sha256 "7efac2422b837b82445e4420b7736ef916475ba8f8d6b66e8def3115f79febd4"
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
