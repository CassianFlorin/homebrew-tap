class Skillhub < Formula
  desc "Skill package manager for AI agents"
  homepage "https://github.com/CassianFlorin/skill-hub"
  version "1.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.2/skillhub_v1.3.2_darwin_arm64.tar.gz"
      sha256 "458c87ee1f188e48ba2df31b84efa044e34aa0dbb875a747589178a549740ce8"
    else
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.2/skillhub_v1.3.2_darwin_amd64.tar.gz"
      sha256 "e7b524e162f92e9528c0b599a60258521289e54d1be27812478b88b1adc31efd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.2/skillhub_v1.3.2_linux_arm64.tar.gz"
      sha256 "7bd9112ad447368e9433648a1653fdc60957e5050a01a3214355344cc31bc076"
    else
      url "https://github.com/CassianFlorin/skill-hub/releases/download/v1.3.2/skillhub_v1.3.2_linux_amd64.tar.gz"
      sha256 "33c0b99c18aecf0bc27a9f114975df684026bf8caad40a585e0fbb19d39db95d"
    end
  end

  def install
    bin.install "skillhub"
  end

  test do
    assert_match "skillhub v#{version}", shell_output("#{bin}/skillhub version")
  end
end
