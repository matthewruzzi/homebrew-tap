cask "nativefier-gui" do
  version "0.1.9"

  if Hardware::CPU.intel?
    sha256 "a967ec906ef601d1d2a69c3aaf59b881a57737bed00ceb6788ae9bee4e68ffa8"
    url "https://github.com/mattruzzi/nativefier-gui/releases/download/#{version}/nativefier-gui-darwin-x64.zip"
  else
    sha256 "f49a7a40c6f201be7f61c86b0b083b2d166797756fc39cf217fce2b09e81b632"
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
