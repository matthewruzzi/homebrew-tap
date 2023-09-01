cask "ytontv" do
  version "52.0.0,25.8.0"

  on_arm do
    sha256 "421e7eb3ad93bbd4e5d7a3bc9d93c9bd1520d9a24c50caeebcbf8ae13d06c600"

    url "https://github.com/mattruzzi/Nativefier-YouTube-on-TV-for-Desktop/releases/download/#{version}/YouTubeonTV-darwin-arm64.zip"

    app "YouTubeonTV-darwin-arm64/YouTube on TV.app"
  end
  on_intel do
    sha256 "3195e9300a42cb1b5b84fccab00c9537cff151290174efca497994bfbe6b5d43"

    url "https://github.com/mattruzzi/Nativefier-YouTube-on-TV-for-Desktop/releases/download/#{version}/YouTubeonTV-darwin-x64.zip"

    app "YouTubeonTV-darwin-x64/YouTube on TV.app"
  end

  name "YouTube on TV.app"
  desc "Electron/Nativefier wrapper for YouTube.com/tv (YouTube Smart TV interface)"
  homepage "https://github.com/mattruzzi/Nativefier-YouTube-on-TV-for-Desktop"

  livecheck do
    url :stable
    strategy :github_latest
  end

  postflight do
    system "xattr", "-r", "-d", "com.apple.quarantine", "#{appdir}/YouTube on TV.app"
  end
end
