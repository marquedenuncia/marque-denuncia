class AddRestrictionsToIncidentTypeAtrributes < ActiveRecord::Migration
  def change
    change_column :indident_types, :description, :string, limit: 30

    change_column_null :indident_types, :description, false

    change_column_default :indident_types, :description, ''
  end
end
