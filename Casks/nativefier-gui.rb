cask "nativefier-gui" do
  version "0.2.3"

  if Hardware::CPU.intel?
    sha256 "1ba78228f89f84e3f253c2fb32c147cb7f3c2eebdd267faaa2b84a1d3a487504"
    url "https://github.com/mattruzzi/nativefier-gui/releases/download/#{version}/nativefier-gui-darwin-x64.zip"
  else
    sha256 "4e1be6bc0e9214c2fe62f14cbbfeb8e6499f9a7ee574e739b10c2bacb8213eec"
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
