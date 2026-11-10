cask "elsewhere" do
  version "2.1"
  sha256 "9fd5468ed4dad44a562686aa3a822a53f25987170f54edd9a3376d37a340e13b"

  url "https://github.com/1stevengrant/Elsewhere/releases/download/v#{version}/Elsewhere-#{version}.zip"
  name "Elsewhere"
  desc "Menubar app to track the local times of friends, teammates and cities"
  homepage "https://github.com/1stevengrant/Elsewhere"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Elsewhere.app"

  zap trash: "~/Library/Containers/nz.ghijk.Elsewhere"
end
