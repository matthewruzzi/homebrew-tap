cask "nativefier-gui" do
  version "0.7.0"

  if Hardware::CPU.intel?
    sha256 "3a0692bfc368e73c3c9376520076b49e144587c5359a0956dcc9bea1e9630c77"
    url "https://github.com/mattruzzi/nativefier-gui/releases/download/#{version}/nativefier-gui-darwin-x64.zip"
  else
    sha256 "a58b1bbdb739e688486dd466a76d30f462106668369ced49cd17a6c6eddea2e6"
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
