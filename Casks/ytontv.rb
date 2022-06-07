cask "ytontv" do
  version "47.2.0,18.3.2"

  if Hardware::CPU.intel?
    sha256 "6beef95ee914895651b832d0e4b8d97247a724e8decbd84a78056089a9e9ff35"
    url "https://github.com/mattruzzi/Nativefier-YouTube-on-TV-for-Desktop/releases/download/#{version}/YouTubeonTV-darwin-x64.zip"
    app "YouTubeonTV-darwin-x64/YouTube\ on\ TV.app"
  else
    sha256 "6dd3292d2cb36c9bd8909309931cf315ae94539d6c96191690576ead6ac592c0"
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
