cask "tendedero" do
  version "1.3.0"
  sha256 "319873b8ad190fb069637869d47ff8e140f0c8e76dde5709f599bbd859caa0ff"

  url "https://github.com/alejandrobujan/tendedero/releases/download/v#{version}/Tendedero-#{version}.dmg"
  name "Tendedero"
  desc "Hangs every screenshot on a line at the top of the screen"
  homepage "https://github.com/alejandrobujan/tendedero"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Tendedero.app"

  uninstall quit: "app.tendedero.Tendedero"

  zap trash: [
    "~/Library/Application Support/Tendedero",
    "~/Library/Preferences/app.tendedero.Tendedero.plist",
  ]
end
