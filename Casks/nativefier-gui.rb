cask "nativefier-gui" do
  version "0.3.3"

  if Hardware::CPU.intel?
    sha256 "d23a5c9dd25b6c3eafbf5173be78bcb96a7b0936fffdb7e319606eafeab72113"
    url "https://github.com/mattruzzi/nativefier-gui/releases/download/#{version}/nativefier-gui-darwin-x64.zip"
  else
    sha256 "f3a2c2f354eb03444d2b3c201da36e957f90abd38010c95b6492b4d25dbc97b2"
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
