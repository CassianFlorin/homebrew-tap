class Skillhub < Formula
  desc "Skill package manager for AI agents"
  homepage "https://github.com/CassianFlorin/skill-hub"
  version "1.3.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.8/skillhub_v1.3.8_darwin_arm64.tar.gz"
      sha256 "ee3a30c54fdc3ad51031c2d21e87abe473b117924c2297bebebcae38f2768854"
    else
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.8/skillhub_v1.3.8_darwin_amd64.tar.gz"
      sha256 "b916798224562c7bd505ec4cf4e4bc8d1f51cd05f8d55e31af001b643d267c6a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.8/skillhub_v1.3.8_linux_arm64.tar.gz"
      sha256 "f4a649c4be0e44afc9f1fcc5c150400151c6b2c8e04b8f2b476dc7f7b3bd1ebc"
    else
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.8/skillhub_v1.3.8_linux_amd64.tar.gz"
      sha256 "cfdcbb5612c7ba4da13271bd67970fe89a062eed578e59b7756b02e4f914ed49"
    end
  end

  def install
    bin.install "skillhub"
  end

  test do
    assert_match "skillhub v#{version}", shell_output("#{bin}/skillhub version")
  end
end
