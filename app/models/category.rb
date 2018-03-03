class Category < ApplicationRecord
  has_many :albums, -> { order(:created_at) }

  extend FriendlyId
  friendly_id :name, use: :slugged

  # eliminiates apostrophe
  def normalize_friendly_id(string)
    string.to_s.gsub("\'", "").parameterize
  end
end