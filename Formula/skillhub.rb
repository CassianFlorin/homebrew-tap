class Skillhub < Formula
  desc "Skill package manager for AI agents"
  homepage "https://github.com/CassianFlorin/skill-hub"
  version "1.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.1/skillhub_v1.3.1_darwin_arm64.tar.gz"
      sha256 "58dea4a858cf379792d31fbf750a69e7389ee8bb4046476c99c4facf176e6bfb"
    else
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.1/skillhub_v1.3.1_darwin_amd64.tar.gz"
      sha256 "5edc83fca65369d1b19b8f43213229d556fcf5dd7f193559a9941596881d1293"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.1/skillhub_v1.3.1_linux_arm64.tar.gz"
      sha256 "d799db30b7559d68ee2521677546e06c9c9ab88e7b1a2cdfca0fdb2b01e3f855"
    else
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.1/skillhub_v1.3.1_linux_amd64.tar.gz"
      sha256 "e1ce9678b568c7234ea087bd146174f12d4ffb043d2dc52644c04eea6b2efbd9"
    end
  end

  def install
    bin.install "skillhub"
  end

  test do
    assert_match "skillhub v#{version}", shell_output("#{bin}/skillhub version")
  end
end
