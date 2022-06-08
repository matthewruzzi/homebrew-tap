cask "nativefier-gui" do
  version "0.3.0"

  if Hardware::CPU.intel?
    sha256 "71f1f07b8643126f59638839d2976462c94a35c61e3e803694768d699d41c1e2"
    url "https://github.com/mattruzzi/nativefier-gui/releases/download/#{version}/nativefier-gui-darwin-x64.zip"
  else
    sha256 "3d359787461800a220ee1a3a95f1c67473ad79d72ffed0aeec763cbe33b7621d"
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
