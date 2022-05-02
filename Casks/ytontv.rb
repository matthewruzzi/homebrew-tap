cask "ytontv" do
  version "47.1.3,18.2.0"

  if Hardware::CPU.intel?
    sha256 "778be8e41a7425c87afd6c4571e7f719590fd92dde9daf6c2e3c3202dd2213b5"
    url "https://github.com/mattruzzi/Nativefier-YouTube-on-TV-for-Desktop/releases/download/#{version}/YouTubeonTV-darwin-x64.zip"
    app "YouTubeonTV-darwin-x64/YouTube\ on\ TV.app"
  else
    sha256 "30080af1d3b414c7acf5f09fe22efbedf0d671b68576208fc7c7d96fe00d00e930080af1d3b414c7acf5f09fe22efbedf0d671b68576208fc7c7d96fe00d00e9"
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
