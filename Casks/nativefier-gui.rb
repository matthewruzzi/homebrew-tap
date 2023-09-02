cask "nativefier-gui" do
  version "0.9.0"

  on_arm do
    sha256 "4fefb462d78edf50a66d1085a21303cd70f2c6d9a46185c3bad6db3bea4963b9"

    url "https://github.com/mattruzzi/nativefier-gui/releases/download/#{version}/nativefier-gui-darwin-arm64.zip"
  end
  on_intel do
    sha256 "5273835199059e43aa863375e798fa28625b3fb6a5e62a131dcd43a6457d2837"

    url "https://github.com/mattruzzi/nativefier-gui/releases/download/#{version}/nativefier-gui-darwin-x64.zip"
  end

  name "Nativefier GUI"
  desc "Make any web page a desktop application"
  homepage "https://github.com/mattruzzi/nativefier-gui"

  livecheck do
    url :stable
    strategy :github_latest
  end

  app "nativefier-gui.app"

  postflight do
    system "xattr", "-r", "-d", "com.apple.quarantine", "#{appdir}/nativefier-gui.app"
  end
end
