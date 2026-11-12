cask "tinycast-fork" do
  version "0.12.11-fork.4"
  sha256 "e7a6a3dc1897bb064e4b673cf09762fb9b5ba339f18bce3e15595b9e16cfe478"

  url "https://github.com/amryadam/tinycast/releases/download/v#{version}/Tinycast-Fork-#{version}.zip"
  name "Tinycast Fork"
  desc "Unofficial fork of the Tinycast launcher"
  homepage "https://github.com/amryadam/tinycast"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^v?(\d+(?:\.\d+)+-fork\.\d+)$/i)
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Tinycast Fork.app"

  uninstall quit: "com.amryadam.tinycast"

  zap trash: [
    "~/.config/com.amryadam.tinycast",
    "~/Library/Application Support/com.amryadam.tinycast",
    "~/Library/Application Support/CrashReporter/Tinycast Fork_*.plist",
    "~/Library/Caches/com.amryadam.tinycast",
    "~/Library/Caches/com.amryadam.tinycast.dictation",
    "~/Library/Preferences/com.amryadam.tinycast.plist",
  ]
end
