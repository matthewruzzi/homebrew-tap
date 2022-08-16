cask "nativefier-gui" do
  version "0.5.0"

  if Hardware::CPU.intel?
    sha256 "944139c61a1169d98272319dbf37c538a6f91b2cc5433bd149138cfec81bd2d4"
    url "https://github.com/mattruzzi/nativefier-gui/releases/download/#{version}/nativefier-gui-darwin-x64.zip"
  else
    sha256 "164efe0eed5f65af390dad35a35e33aca220fbb793046ff36abc20f4515da283"
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
