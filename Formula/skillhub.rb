class Skillhub < Formula
  desc "Skill package manager for AI agents"
  homepage "https://github.com/CassianFlorin/skill-hub"
  version "1.3.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.7/skillhub_v1.3.7_darwin_arm64.tar.gz"
      sha256 "91e835f84827c7313bc2308324702607224d37251a8ce3577d743d6585f53491"
    else
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.7/skillhub_v1.3.7_darwin_amd64.tar.gz"
      sha256 "4d9bfe2f7ca3cb5b9055f7e7c8615baaa712e47adc82b3a5e338f413c30cbd72"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.7/skillhub_v1.3.7_linux_arm64.tar.gz"
      sha256 "1666ad19a566d9c8b6555ad6115e0e4947203fbafefefced42072a9e7b44a82e"
    else
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.7/skillhub_v1.3.7_linux_amd64.tar.gz"
      sha256 "d87f98662d92961796a9b3e841bf9c11b983460d3207b7cf3a1b61c806da267f"
    end
  end

  def install
    bin.install "skillhub"
  end

  test do
    assert_match "skillhub v#{version}", shell_output("#{bin}/skillhub version")
  end
end
