class AddAnonymousColumnToComment < ActiveRecord::Migration
  def change
    add_column :comments, :anonymous, :boolean, default: false, null: false
  end
end
