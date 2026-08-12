cask "clipboardhistory" do
  version "1.0.0-beta.3"
  sha256 "48f3c8ecf1400a24730053d64e81a8c5f076fca12060059e25526032cee2e7b0"

  url "https://github.com/BGirginn/ClipboardHistory/releases/download/v#{version}/ClipboardHistory-#{version}-arm64.zip"
  name "ClipboardHistory"
  desc "Local menu-bar utility hub with clipboard history and notes"
  homepage "https://github.com/BGirginn/ClipboardHistory"

  livecheck do
    skip "Only Community beta releases are published"
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ClipboardHistory.app"

  zap trash: [
    "~/Library/Application Support/ClipboardHistory",
    "~/Library/Caches/com.brgirgin.ClipboardHistory",
    "~/Library/Preferences/com.brgirgin.ClipboardHistory.plist",
    "~/Library/Saved Application State/com.brgirgin.ClipboardHistory.savedState",
  ]

  caveats <<~EOS
    ClipboardHistory Community Beta is self-signed and is not Apple-notarized.
    If macOS blocks the first launch, Control-click ClipboardHistory in Applications,
    choose Open, and confirm. Do not remove quarantine with xattr.
  EOS
end
