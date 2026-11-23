cask "waitlight" do
  version "0.11.0"
  sha256 "0fc9a6d8813165b860371e54c16bb3b02bc130cbd77a9a65ad03a0d716537e15"

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
