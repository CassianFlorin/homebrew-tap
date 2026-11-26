cask "waitlight" do
  version "0.12.1"
  sha256 "fa913903a0b7cfdfc91d14a74117066ad0d4591502ee12e07dfeceb51d4e00d5"

  url "https://github.com/CassianFlorin/Waitlight/releases/download/v#{version}/Waitlight-#{version}.dmg"
  name "Waitlight"
  desc "Native workbench for running AI coding agents side by side"
  homepage "https://waitlight.cassianflorin.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Waitlight.app"

  zap trash: [
    "~/Library/Application Support/AgentDeck",
    "~/Library/Application Support/Waitlight",
    "~/Library/Caches/AgentDeck",
    "~/Library/Caches/Waitlight",
    "~/Library/Caches/com.cassianflorin.agentdeck",
    "~/Library/HTTPStorages/com.cassianflorin.agentdeck",
    "~/Library/Preferences/com.cassianflorin.agentdeck.plist",
    "~/Library/Saved Application State/com.cassianflorin.agentdeck.savedState",
  ]
end
