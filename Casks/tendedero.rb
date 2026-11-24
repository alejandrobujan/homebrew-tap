cask "tendedero" do
  version "2.1.1"
  sha256 "c0fea8b63eae249f47b453addcc87721e50d9a09e81d47b0cf1205bee0c9410d"

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
