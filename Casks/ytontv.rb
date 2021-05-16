cask "ytontv" do
  version "43.1.2,12.0.7"
  if Hardware::CPU.intel?
    sha256 "870703c7104a4b01b92ff524f58caa2fad7bb14a0e16bda511846e5ccab0ef4a"
    url "https://github.com/mattruzzi/Nativefier-YouTube-on-TV-for-Desktop/releases/download/#{version}/YouTubeonTV-darwin-x64.zip"
  else
    sha256 "46f7db35865df2cfae59e14790a6e1312fe1eccba1328573411446c1c14eab19"
    url "https://github.com/mattruzzi/Nativefier-YouTube-on-TV-for-Desktop/releases/download/#{version}/YouTubeonTV-darwin-arm64.zip"
  end

  
  appcast "https://github.com/mattruzzi/Nativefier-YouTube-on-TV-for-Desktop/releases.atom"
  name "YouTube on TV.app"
  desc "Electron/Nativefier wrapper for YouTube.com/tv (YouTube Smart TV interface)"
  homepage "https://github.com/mattruzzi/Nativefier-YouTube-on-TV-for-Desktop"

  app "YouTubeonTV-darwin-x64/YouTube\ on\ TV.app"

  postflight do
    system "xattr", "-r", "-d", "com.apple.quarantine", "#{appdir}/YouTube on TV.app"
  end
end
