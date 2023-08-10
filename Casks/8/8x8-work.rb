cask "8x8-work" do
  version "8.4.6-1"
  sha256 "5d9e869a31f825032018e86be72a744eb583d4c4dce673fdeb976ac41bef349b"

  url "https://vod-updates.8x8.com/ga/work-dmg-v#{version}.dmg"
  name "8x8_work"
  desc "Communications application with voice, video, chat, and web conferencing"
  homepage "https://www.8x8.com/products/apps"

  livecheck do
    url "https://support.8x8.com/cloud-phone-service/voice/work-desktop/download-8x8-work-for-desktop#Download_for_Mac"
    regex(/work[._-]dmg[._-]v(\d+(?:.\d+)*)\.dmg/i)
  end

  app "8x8 Work.app"

  zap trash: "~/Library/Application Support/8x8 Work"
end