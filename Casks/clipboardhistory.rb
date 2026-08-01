cask "clipboardhistory" do
  version "1.0.0-beta.1"
  sha256 "8d2bf2a7312e3eec6a915c92507110d2e4a0bceb6b2e1cb0108d2dffcdd0576f"

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
