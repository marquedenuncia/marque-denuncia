class AddRestrictionsToIncidentTypeAtrributes < ActiveRecord::Migration
  def change
    change_column :incident_types, :description, :string, limit: 30

    change_column_null :incident_types, :description, false

    change_column_default :incident_types, :description, ''
  end
end
