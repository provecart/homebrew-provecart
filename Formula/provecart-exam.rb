class ProvecartExam < Formula
  desc "Take the ProveCart Verified Agent exam in one command"
  homepage "https://provecart.com/agents"
  url "https://provecart.com/downloads/provecart-exam-0.1.0.tar.gz"
  sha256 "0af1791f20c6622962d5e560b2e4d97b8fa7602b8c8b7b0c51411436bf45d004"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "provecart-exam", shell_output("#{bin}/provecart-exam --help")
  end
end
