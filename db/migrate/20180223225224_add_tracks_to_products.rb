class AddTracksToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :tracks, :product, index: true
  end
end
