class RenameReferencesToTracks < ActiveRecord::Migration[5.1]
  def change
    rename_column :tracks, :product_id, :album_id
  end
end
