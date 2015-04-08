class WelcomeController < ApplicationController
  def index
    @tables = ["Actions", "Attachments", "Events", "Followers", "Holdings", "Monk-Shugen Attachments", "Personalities", "Regions", "Rings", "Senseis", "Strongholds", "Types", "Winds"]
  end
end
