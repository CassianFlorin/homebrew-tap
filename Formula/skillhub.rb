class Skillhub < Formula
  desc "Skill package manager for AI agents"
  homepage "https://github.com/CassianFlorin/skill-hub"
  version "1.3.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.9/skillhub_v1.3.9_darwin_arm64.tar.gz"
      sha256 "47e7e9a48bd1e8e79dd74048c67a093d6575fc53747b69e5fad4b708248f8a35"
    else
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.9/skillhub_v1.3.9_darwin_amd64.tar.gz"
      sha256 "594b2b53baada8694866fddf728206a862846da26f1f058228bcfa6250c66f3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.9/skillhub_v1.3.9_linux_arm64.tar.gz"
      sha256 "52baf7d64b13ad390e06e83edb5dbc38209f7819b23f3aee35b9b16ff83d43f2"
    else
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.9/skillhub_v1.3.9_linux_amd64.tar.gz"
      sha256 "cccb885f60b4306ab1a7cf12f1c6ecfec3e8251bb808be0882e72f726ba63e08"
    end
  end

  def install
    bin.install "skillhub"
  end

  test do
    assert_match "skillhub v#{version}", shell_output("#{bin}/skillhub version")
  end
end
