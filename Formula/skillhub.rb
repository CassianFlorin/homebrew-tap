class Skillhub < Formula
  desc "Skill package manager for AI agents"
  homepage "https://github.com/CassianFlorin/skill-hub"
  version "1.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.6/skillhub_v1.3.6_darwin_arm64.tar.gz"
      sha256 "08fb297d1a33d2e57bd9537c49b587aa31ea551c8d13decf5931fe22de8686b2"
    else
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.6/skillhub_v1.3.6_darwin_amd64.tar.gz"
      sha256 "31dcd0db148a02d4c0369bc32036126911ef8d3d56c257374a27290ce7f37c48"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.6/skillhub_v1.3.6_linux_arm64.tar.gz"
      sha256 "390888f1d5e30ce2055e18ce0256d5a03488d8606773f1c5fda16d58ffc88313"
    else
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.6/skillhub_v1.3.6_linux_amd64.tar.gz"
      sha256 "79726c648aeb00ec5d97cb6a338f0561e090dec1f61dc41073998d60f15c6d0a"
    end
  end

  def install
    bin.install "skillhub"
  end

  test do
    assert_match "skillhub v#{version}", shell_output("#{bin}/skillhub version")
  end
end
