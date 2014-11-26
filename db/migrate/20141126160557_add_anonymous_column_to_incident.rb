class AddAnonymousColumnToIncident < ActiveRecord::Migration
  def change
    add_column :incidents, :anonymous, :boolean, default: false, null: false
  end
end
