cask "nativefier-gui" do
  version "0.1.6"

  if Hardware::CPU.intel?
    sha256 "d0ebb043f54074b1c83198d85e7047afdebb7651e13a0add0d9821e6d9337641"
    url "https://github.com/mattruzzi/nativefier-gui/releases/download/#{version}/nativefier-gui-darwin-x64.zip"
  else
    sha256 "4978766a5b04c727cc19ad6e3c9e1c57b68601531f5c5916bfbea67a593483ad"
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
