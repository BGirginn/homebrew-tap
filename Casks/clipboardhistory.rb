cask "clipboardhistory" do
  version "1.0.0-beta.2"
  sha256 "b4d826e42554f2a7275c7370f86caacdede3a98cc45cc8bedcc0c590ad37c37b"

  url "https://github.com/BGirginn/ClipboardHistory/releases/download/v#{version}/ClipboardHistory-#{version}-arm64.zip"
  name "ClipboardHistory"
  desc "Local clipboard history manager with encryption and privacy controls"
  homepage "https://github.com/BGirginn/ClipboardHistory"

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
