cask "nativefier-gui" do
  version "0.1.3"

  if Hardware::CPU.intel?
    sha256 "417f9c054408a14f4385e603e74c04daba79ccb50bb21280eacf62abae7277f7"
    url "https://github.com/mattruzzi/nativefier-gui/releases/download/#{version}/nativefier-gui-darwin-x64.zip"
  else
    sha256 "e6f1515f58579ff74ebffcd92733680a7f33cb51c1e419b1785cd8ca9bcbdd46"
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
