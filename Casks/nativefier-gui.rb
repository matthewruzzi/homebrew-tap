cask "nativefier-gui" do
  version "0.2.0"

  if Hardware::CPU.intel?
    sha256 "a74778714150cfb7ac9aa07eeaf7ee74c15fa3592144d9ab10ed524b967dbec8"
    url "https://github.com/mattruzzi/nativefier-gui/releases/download/#{version}/nativefier-gui-darwin-x64.zip"
  else
    sha256 "75ad6136dfa2c8930f98231deaf2b5be865a21c0a208c6ecc030d69b3bdd1f4c"
    url "https://github.com/mattruzzi/nativefier-gui/releases/download/#{version}/nativefier-gui-darwin-arm64.zip"
  end

  appcast "https://github.com/mattruzzi/nativefier-gui/releases.atom"
  name "Nativefier GUI"
  desc "Make any web page a desktop application"
  homepage "https://github.com/mattruzzi/nativefier-gui"

  app "nativefier-gui.app"

  postflight do
    system "xattr", "-r", "-d", "com.apple.quarantine", "#{appdir}/nativefier-gui.app"
  end
end
