cask "waitlight" do
  version "0.10.1"
  sha256 "b05d0b3d14e527f84fdf3b2b6aa4947c960a002efd7b64bb7d69d7fb48b0f62c"

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
