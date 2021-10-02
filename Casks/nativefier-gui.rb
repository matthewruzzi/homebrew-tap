cask "nativefier-gui" do
  version "0.2.4"

  if Hardware::CPU.intel?
    sha256 "042675d397b7d77a96791e6c839fd90a72b0154a7dfce20f3b455c6e6dd34d69"
    url "https://github.com/mattruzzi/nativefier-gui/releases/download/#{version}/nativefier-gui-darwin-x64.zip"
  else
    sha256 "a3859451776f61cc03c47feaab1b249ff508aa4c30fbda1af5c8fed31b084712"
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
