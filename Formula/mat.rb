class Mat < Formula
  desc "Switch between AI CLI accounts (Claude Code, Codex, Gemini, ...) from one TUI"
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
