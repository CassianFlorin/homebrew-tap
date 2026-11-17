cask "agentdeck" do
  version "0.9.0"
  sha256 "68ebaf7c405869397f08c2658cacd9657e039cb656180cbb3aa0fbcabb8f14e0"

  url "https://github.com/CassianFlorin/AgentDeck/releases/download/v#{version}/AgentDeck-#{version}.dmg"
  name "AgentDeck"
  desc "Native workbench for running AI coding agents side by side"
  homepage "https://agentdeck.cassianflorin.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "AgentDeck.app"

  zap trash: [
    "~/Library/Application Support/AgentDeck",
    "~/Library/Caches/AgentDeck",
    "~/Library/Caches/com.cassianflorin.agentdeck",
    "~/Library/HTTPStorages/com.cassianflorin.agentdeck",
    "~/Library/Preferences/com.cassianflorin.agentdeck.plist",
    "~/Library/Saved Application State/com.cassianflorin.agentdeck.savedState",
  ]
end
