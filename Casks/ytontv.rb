cask "ytontv" do
  version "47.1.3,18.3.1"

  if Hardware::CPU.intel?
    sha256 "1006046dc3d19d6a7926298c0d9f6d5a66f409e2f6ea28b2e5fc398e6f7e94be"
    url "https://github.com/mattruzzi/Nativefier-YouTube-on-TV-for-Desktop/releases/download/#{version}/YouTubeonTV-darwin-x64.zip"
    app "YouTubeonTV-darwin-x64/YouTube\ on\ TV.app"
  else
    sha256 "c16c1052accdd95808fe0e52660041847d1d0edc9e1393b328f9feb61266096e"
    url "https://github.com/mattruzzi/Nativefier-YouTube-on-TV-for-Desktop/releases/download/#{version}/YouTubeonTV-darwin-arm64.zip"
    app "YouTubeonTV-darwin-arm64/YouTube\ on\ TV.app"
  end

  appcast "https://github.com/mattruzzi/Nativefier-YouTube-on-TV-for-Desktop/releases.atom"
  name "YouTube on TV.app"
  desc "Electron/Nativefier wrapper for YouTube.com/tv (YouTube Smart TV interface)"
  homepage "https://github.com/mattruzzi/Nativefier-YouTube-on-TV-for-Desktop"

  postflight do
    system "xattr", "-r", "-d", "com.apple.quarantine", "#{appdir}/YouTube on TV.app"
  end
end
