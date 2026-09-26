cask "clipboardhistory" do
  version "1.0.0-beta.7"
  sha256 "0d580ce924f0a1c3d57b14f104191bacd48ed9db9ac2949cea05a7774db36a98"

  url "https://github.com/BGirginn/ClipboardHistory/releases/download/v#{version}/CoreDeck-#{version}-arm64.zip"
  name "CoreDeck"
  desc "Local menu-bar utility hub with clipboard history and notes"
  homepage "https://github.com/BGirginn/ClipboardHistory"

  livecheck do
    skip "Only Community beta releases are published"
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "CoreDeck.app"

  zap trash: [
    "~/Library/Application Support/ClipboardHistory",
    "~/Library/Caches/com.brgirgin.ClipboardHistory",
    "~/Library/Preferences/com.brgirgin.ClipboardHistory.plist",
    "~/Library/Saved Application State/com.brgirgin.ClipboardHistory.savedState",
  ]

  caveats <<~EOS
    CoreDeck Community Beta is self-signed and is not Apple-notarized.
    If macOS blocks the first launch, Control-click CoreDeck in Applications,
    choose Open, and confirm. Do not remove quarantine with xattr.
  EOS
end
