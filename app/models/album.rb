# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  image_url   :string
#  price       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Album < ApplicationRecord
  has_many :tracks
  belongs_to :category

  validates :title, :description, :image_url, presence: true

  extend FriendlyId
  friendly_id :title, use: :slugged

  # eliminiates apostrophe
  def normalize_friendly_id(string)
    string.to_s.gsub("\'", "").parameterize
  end
end
