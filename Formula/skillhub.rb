class Skillhub < Formula
  desc "Skill package manager for AI agents"
  homepage "https://github.com/CassianFlorin/skill-hub"
  version "1.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.5/skillhub_v1.3.5_darwin_arm64.tar.gz"
      sha256 "8131030b325906be0690d2c3d4797d6ae7c1c87f04b03d638e227056feded7d2"
    else
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.5/skillhub_v1.3.5_darwin_amd64.tar.gz"
      sha256 "1b5ca775bf5e6b5365781fdc61648b72a01eaf322268ecd2a4c6ddeca1575e54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.5/skillhub_v1.3.5_linux_arm64.tar.gz"
      sha256 "905c7eae3f1b04d55193ab6a2e1aaa2412a2c8390981144c36a74ad8985400ae"
    else
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.5/skillhub_v1.3.5_linux_amd64.tar.gz"
      sha256 "13de4f2599fb1b3be5de001f053f839c87b6e170c63b8b09f3bd9d8dc44a0990"
    end
  end

  def install
    bin.install "skillhub"
  end

  test do
    assert_match "skillhub v#{version}", shell_output("#{bin}/skillhub version")
  end
end
