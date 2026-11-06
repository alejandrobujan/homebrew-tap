cask "tendedero" do
  version "1.8.1"
  sha256 "bd63e421c5b836868b22385e5d328254395b23ff36458d25b26dce33aefffcf5"

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
