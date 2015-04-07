class WelcomeController < ApplicationController
  def index
    @tables = ["Actions", "Attachments", "Events", "Followers", "Holdings", "Monk-Shugen Attachments", "Personalities", "Regions", "Rings", "Senseis", "Strongholds", "Types", "Winds"]
#    @tables = Act.all, Attachment.all, Event.all, Follower.all, Holding.all, MonkShugenjaAttachment.all, Personality.all, Region.all, Ring.all, Sensei.all, Stronghold.all, Type.all, Wind.all, User.all 
  end

#  def show
#      Act.show
#      Attachment.show
#  end
end
