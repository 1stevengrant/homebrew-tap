cask "elsewhere" do
  version "2.1.1"
  sha256 "29143516ddfadad2c17095a56661fb72f5b6f0abf08021762ae2335b314ae8db"

  url "https://github.com/1stevengrant/Elsewhere/releases/download/v#{version}/Elsewhere-#{version}.zip"
  name "Elsewhere"
  desc "Menubar app to track the local times of friends, teammates and cities"
  homepage "https://github.com/1stevengrant/Elsewhere"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Elsewhere.app"

  zap trash: "~/Library/Containers/nz.ghijk.Elsewhere"
end
