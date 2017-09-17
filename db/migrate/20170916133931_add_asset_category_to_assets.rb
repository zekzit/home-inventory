class AddAssetCategoryToAssets < ActiveRecord::Migration[5.1]
  def change
    add_reference :assets, :asset_category, foreign_key: true
  end
end
