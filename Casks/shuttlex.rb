cask "shuttlex" do
  version "1.7.0"
  sha256 "2ce7e7e287715fb329f63658cd4561cce9ec611e5bdc64f5ab4396dd42ea8771"

  url "https://github.com/DasDuo/ShuttleX/releases/download/v#{version}/ShuttleX-#{version}-arm64.dmg"
  name "ShuttleX"
  desc "Modern SSH launcher for the macOS menu bar"
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
