cask "qmapshack" do
  version :latest
  sha256 :no_check
  # version "1.16.1"
  # sha256 '967881d88a09964661ea0f181ae29c06b1f771a3047cf9a50683f3d5eecfd15f'

  url "https://github.com/d029940/qmapshack-brew/releases/download/QMapShack-Mac/QMapShack_1.16.1-2-arm-brew.zip"
  name "QMapShack"
  desc "GPS planning tool"
  # homepage  "https://github.com/d029940/qmapshack-brew/"
  homepage  "https://github.com/Maproom/qmapshack/wiki"


  depends_on formula: [ 
    "qt@5",
    "dbus", 
    "proj", 
    "gdal",
    "geos" 
  ]
  depends_on macos: ">= :monterey" 
  depends_on arch: ":arm64"

  # livecheck do
  #   url "https://github.com/d029940/qmapshack/releases/download/QMapShack-Mac/"
  #   strategy :page_match
  #   regex(%r{href=.*?/QMapShack-(\d+(?:\.\d+)*)\.zip}i)
  # end

  app "QMapShack.app"

  zap trash: [
    "~/Library/Application Support/QLandkarte/QMapShack", 
    "~/Library/Preferences/qmapshack.plist"
  ]

end
