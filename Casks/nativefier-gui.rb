cask "nativefier-gui" do
  version "0.1.5"

  if Hardware::CPU.intel?
    sha256 "41d7dfd320f117ccbadec4cfe0fff21fd11b169e8634cdde0892a353bd2a11cb"
    url "https://github.com/mattruzzi/nativefier-gui/releases/download/#{version}/nativefier-gui-darwin-x64.zip"
  else
    sha256 "e376e4da9a807ccd10e3f6e5aa6098be0ed2e6fec97c7f458186d7d53951252b"
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
