class Skillhub < Formula
  desc "Skill package manager for AI agents"
  homepage "https://github.com/CassianFlorin/skill-hub"
  version "1.3.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.10/skillhub_v1.3.10_darwin_arm64.tar.gz"
      sha256 "fcda2613c0ffc4bb3364c6443d18ceb2dccf523169c4eff126dbf52a6995aa16"
    else
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.10/skillhub_v1.3.10_darwin_amd64.tar.gz"
      sha256 "40ed8aeb5680aa45890fb3e45c37739013c46e307869f20a155abb8bf4597d57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.10/skillhub_v1.3.10_linux_arm64.tar.gz"
      sha256 "3c019ca6ec9700c11baaad6369a3a743d041f4f77a2ac22c8214bee59ab08b45"
    else
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.10/skillhub_v1.3.10_linux_amd64.tar.gz"
      sha256 "4a95f0fb436943c8032caadb7475743d3eb7d5bd52588da67029be2f2636b80e"
    end
  end

  def install
    bin.install "skillhub"
  end

  test do
    assert_match "skillhub v#{version}", shell_output("#{bin}/skillhub version")
  end
end
