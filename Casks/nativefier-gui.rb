cask "nativefier-gui" do
  version "0.2.2"

  if Hardware::CPU.intel?
    sha256 "60a5e2d9e1dedff5f0f49fdace83b8a167d8de8bc1b5ab6cdaa4b1777566758f"
    url "https://github.com/mattruzzi/nativefier-gui/releases/download/#{version}/nativefier-gui-darwin-x64.zip"
  else
    sha256 "741a688086b9305896b3120f7e85362bd8188a4812486dd177d58ce6ceb3b8a3"
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
