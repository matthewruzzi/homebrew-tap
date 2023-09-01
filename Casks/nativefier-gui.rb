cask "nativefier-gui" do
  version "0.8.0"

  on_arm do
    sha256 "d9fdc69cf43d3b810ccf4bbab0584f92eeaed5fd5f8b3a0455174e199ff54576"

    url "https://github.com/mattruzzi/nativefier-gui/releases/download/#{version}/nativefier-gui-darwin-arm64.zip"
  end
  on_intel do
    sha256 "a8aed11e41ebaf2dfdd5f8fc1a21c8ea53b78d650029837fbb7687c27e7fa3c1"

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
