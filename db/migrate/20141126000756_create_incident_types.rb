class CreateIncidentTypes < ActiveRecord::Migration
  def change
    create_table :incident_types do |t|
      t.text :description

      t.timestamps
    end
  end
end
