cask "nativefier-gui" do
  version "0.5.1"

  if Hardware::CPU.intel?
    sha256 "6c5a92585afc87a843ce4264054d5decbb9ea8906228c0a6585b51832ea49a70"
    url "https://github.com/mattruzzi/nativefier-gui/releases/download/#{version}/nativefier-gui-darwin-x64.zip"
  else
    sha256 "daaa4d4969c1b80d647bac35769b6bb55b562fa1e8bb12a44b841bf473ca747e"
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
