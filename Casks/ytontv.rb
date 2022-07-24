cask "ytontv" do
  version "48.0.0,19.0.9"

  if Hardware::CPU.intel?
    sha256 "b3b9bdbd767d74c7df659333f9ff7ed867c9bc8a6e03ecb3265a65ae2af5ba99"
    url "https://github.com/mattruzzi/Nativefier-YouTube-on-TV-for-Desktop/releases/download/#{version}/YouTubeonTV-darwin-x64.zip"
    app "YouTubeonTV-darwin-x64/YouTube\ on\ TV.app"
  else
    sha256 "3c162ae305b8fefb296cc2d199d699674a95f6279d16ebcaff7d4a5b6944c3ed"
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
