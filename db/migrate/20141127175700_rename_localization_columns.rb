class RenameLocalizationColumns < ActiveRecord::Migration
  def change
    rename_column :establishments, :lat, :latitude
    rename_column :establishments, :lng, :longitude
  end
end
