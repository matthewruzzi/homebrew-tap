cask "ytontv" do
  version "43.0.2,12.0.4"
  sha256 "3ca57f55c97b6db7ca0049d1c0bd731f7549a484e467b31d18eca65c0d6a7790"

  url "https://github.com/mattruzzi/Nativefier-YouTube-on-TV-for-Desktop/releases/download/#{version}/YouTubeonTV-darwin-x64.zip"
  appcast "https://github.com/mattruzzi/Nativefier-YouTube-on-TV-for-Desktop/releases.atom"
  name "YouTube on TV.app"
  desc "Electron/Nativefier wrapper for YouTube.com/tv (YouTube Smart TV interface)"
  homepage "https://github.com/mattruzzi/Nativefier-YouTube-on-TV-for-Desktop"

  app "YouTubeonTV-darwin-x64/YouTube\ on\ TV.app"

  postflight do
    system "xattr", "-r", "-d", "com.apple.quarantine", "#{appdir}/YouTube on TV.app"
  end
end
