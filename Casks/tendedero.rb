cask "tendedero" do
  version "1.0.0"
  sha256 "8e44bf16722706f8e2c23e28db9d5124976d4e3001d2d5f9a69ae026024be6a4"

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
