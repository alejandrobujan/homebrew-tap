cask "tendedero" do
  version "2.1.0"
  sha256 "ae8f12d276971cf7d17a1909ae46876594f5fa76b520ab3dc244ec78c8798e9d"

  url "https://github.com/alejandrobujan/tendedero/releases/download/v#{version}/Tendedero-#{version}.dmg"
  name "Tendedero"
  desc "Hangs every screenshot on a line at the top of the screen"
  homepage "https://tendedero.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  deprecate! date:    "2026-11-06",
             because: "grew so much that it is now an official Homebrew cask! " \
                      "Switch with `brew uninstall --cask alejandrobujan/tap/tendedero && brew install tendedero`. " \
                      "Thank you for being here from the start"

  depends_on macos: :sonoma

  app "Tendedero.app"

  uninstall quit: "app.tendedero.Tendedero"

  zap trash: [
    "~/Library/Application Support/Tendedero",
    "~/Library/Preferences/app.tendedero.Tendedero.plist",
  ]
end
