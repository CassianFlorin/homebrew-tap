class Skillhub < Formula
  desc "Skill package manager for AI agents"
  homepage "https://github.com/CassianFlorin/skill-hub"
  version "1.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.4/skillhub_v1.3.4_darwin_arm64.tar.gz"
      sha256 "82701ab394116e9634de8d2628f321ce98d64dd357b4c21d07ddd1e27de8cb5b"
    else
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.4/skillhub_v1.3.4_darwin_amd64.tar.gz"
      sha256 "c323910cf6ed25f5d63c41fe63be49179c23eacf95113842f8b8bdce5c793619"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.4/skillhub_v1.3.4_linux_arm64.tar.gz"
      sha256 "ad6c03e66e7a2bc0e545563fc8e7268dc6d9d0433c705b883e3320e577867003"
    else
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.4/skillhub_v1.3.4_linux_amd64.tar.gz"
      sha256 "23bb2c5cfc971c70eca313fe50135dd9fa6a2dee2d8a05dc2ee48d3100d67cb4"
    end
  end

  def install
    bin.install "skillhub"
  end

  test do
    assert_match "skillhub v#{version}", shell_output("#{bin}/skillhub version")
  end
end
