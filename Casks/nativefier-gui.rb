cask "nativefier-gui" do
  version "0.8.0"

  if Hardware::CPU.intel?
    sha256 "a8aed11e41ebaf2dfdd5f8fc1a21c8ea53b78d650029837fbb7687c27e7fa3c1"
    url "https://github.com/mattruzzi/nativefier-gui/releases/download/#{version}/nativefier-gui-darwin-x64.zip"
  else
    sha256 "d9fdc69cf43d3b810ccf4bbab0584f92eeaed5fd5f8b3a0455174e199ff54576"
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
