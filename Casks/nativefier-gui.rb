cask "nativefier-gui" do
  version "0.1.4"

  if Hardware::CPU.intel?
    sha256 "1aecf411a4f650bd0176883ae728fb2385eaf351f89ccae6ef6db0ae830590e8"
    url "https://github.com/mattruzzi/nativefier-gui/releases/download/#{version}/nativefier-gui-darwin-x64.zip"
  else
    sha256 "6b37a6112550d3ef86a2e46e429f3ded5113150e24cdfb1d6b69f8cb41ca717e"
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
