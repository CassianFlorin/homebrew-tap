class Skillhub < Formula
  desc "Skill package manager for AI agents"
  homepage "https://github.com/CassianFlorin/skill-hub"
  version "1.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.3/skillhub_v1.3.3_darwin_arm64.tar.gz"
      sha256 "8d4a35a58b6d39c27a82714379f6da8b12ff916da1c412ad524703634d8a260d"
    else
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.3/skillhub_v1.3.3_darwin_amd64.tar.gz"
      sha256 "99785a5ca66625cf87d5b89b02c196efe71f7b92ca7a6d0d667e3a51834acb70"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.3/skillhub_v1.3.3_linux_arm64.tar.gz"
      sha256 "a133e85b55eaa2101e1f53357cbb99a1871aed866962ae4db572a42c163e9c04"
    else
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.3/skillhub_v1.3.3_linux_amd64.tar.gz"
      sha256 "26ed404d8dd0016d154ed2a7387dc821d666b8d4cf4e12b4261f519365e4362b"
    end
  end

  def install
    bin.install "skillhub"
  end

  test do
    assert_match "skillhub v#{version}", shell_output("#{bin}/skillhub version")
  end
end
