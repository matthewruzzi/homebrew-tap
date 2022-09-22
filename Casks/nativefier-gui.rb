cask "nativefier-gui" do
  version "0.6.0"

  if Hardware::CPU.intel?
    sha256 "6988ed26ecc76ae0e22c047cd6e63c3c14b2a17b838a9dd801fbba18868fc947"
    url "https://github.com/mattruzzi/nativefier-gui/releases/download/#{version}/nativefier-gui-darwin-x64.zip"
  else
    sha256 "68e58d20a086c790652db1c0b625f909f7d0788618e183a26c469ce65fe2bf5e"
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
