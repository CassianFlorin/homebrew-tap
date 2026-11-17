cask "waitlight" do
  version "0.10.0"
  sha256 "167bc16d37fd9cb95b5ea964d5590657f8ddeb7c4c5a3b722ab7cc9654e61b45"

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
