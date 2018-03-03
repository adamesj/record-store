class RenameProductsToAlbums < ActiveRecord::Migration[5.1]
  def change
    rename_table :products, :albums
  end
end
