cask "nativefier-gui" do
  version "0.4.0"

  if Hardware::CPU.intel?
    sha256 "c6c0c7efca2e25e630087cdfb90979f7384bab104d65951387a536a4a4ddbd30"
    url "https://github.com/mattruzzi/nativefier-gui/releases/download/#{version}/nativefier-gui-darwin-x64.zip"
  else
    sha256 "1de6beb34f20745f83dd2db41ed04a8efecdce6422b30cb2a880d76cff81652b"
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
