cask "tinycast-fork" do
  version "0.12.11-fork.1"
  sha256 "5d115b20f19ad34d011adadcaf6b609ac0c4c62324b90f5658ab30880c933133"

  url "https://github.com/amryadam/tinycast/releases/download/v#{version}/Tinycast-Fork-#{version}.zip"
  name "Tinycast Fork"
  desc "Unofficial fork of the Tinycast launcher"
  homepage "https://github.com/amryadam/tinycast"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^v?(\d+(?:\.\d+)+-fork\.\d+)$/i)
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Tinycast Fork.app"

  uninstall quit: "com.amryadam.tinycast"

  zap trash: [
    "~/.config/com.amryadam.tinycast",
    "~/Library/Application Support/com.amryadam.tinycast",
    "~/Library/Caches/com.amryadam.tinycast",
    "~/Library/Caches/com.amryadam.tinycast.dictation",
    "~/Library/Preferences/com.amryadam.tinycast.plist",
  ]
end
