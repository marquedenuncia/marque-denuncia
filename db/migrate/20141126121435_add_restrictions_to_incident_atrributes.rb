class AddRestrictionsToIncidentAtrributes < ActiveRecord::Migration
  def change
    change_column :incidents, :description, :string, limit: 1000

    change_column_null :incidents, :description, false
    change_column_null :incidents, :view_count, false

    change_column_default :incidents, :description, ''
    change_column_default :incidents, :view_count, 0
  end
end
