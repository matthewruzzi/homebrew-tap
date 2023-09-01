cask "ytontv" do
  version "50.1.1,22.3.15"

  on_intel do
    sha256 "48f4279f8559f56488abda22eb3a8f9ea3e133706d0fdd1096afcace19b3ee55"
    url "https://github.com/mattruzzi/Nativefier-YouTube-on-TV-for-Desktop/releases/download/#{version}/YouTubeonTV-darwin-x64.zip"
    app "YouTubeonTV-darwin-x64/YouTube\ on\ TV.app"
  end

  on_arm do
    sha256 "965d4750b924ba3bb8a24dfd26cb89876b633c311c7cd189ae447b24420bc987"
    url "https://github.com/mattruzzi/Nativefier-YouTube-on-TV-for-Desktop/releases/download/#{version}/YouTubeonTV-darwin-arm64.zip"
    app "YouTubeonTV-darwin-arm64/YouTube\ on\ TV.app"
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
