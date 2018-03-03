class Track < ApplicationRecord
  belongs_to :album

  def track_title
    RSpotify::Track.find(self.title)
  end

  def track_number
    track_title.track_number
  end

  def track_preview
    track_title.preview_url
  end
end