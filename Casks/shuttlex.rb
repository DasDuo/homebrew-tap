cask "shuttlex" do
  version "1.14.0"
  sha256 "39da71c9588464e52083bd64e558639077f3d423adee31d76263a7243a602307"

  url "https://github.com/DasDuo/ShuttleX/releases/download/v#{version}/ShuttleX-#{version}-arm64.dmg"
  name "ShuttleX"
  desc "SSH launcher for the menu bar"
  homepage "https://github.com/DasDuo/ShuttleX"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ShuttleX.app"

  caveats <<~EOS
    ShuttleX is ad-hoc signed (not notarized), so Gatekeeper blocks the first
    launch. To allow it:

      xattr -dr com.apple.quarantine "#{appdir}/ShuttleX.app"

    or open it once and then choose System Settings → Privacy & Security →
    "Open Anyway".
  EOS
end
