cask "tinycast-fork" do
  version "0.12.11-fork.2"
  sha256 "3286bf025a8bf7007417246af4606417b917db46edaee7b48d448304263c5f80"

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
