class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.references :user, index: true
      t.references :incident_type, index: true
      t.text :description
      t.integer :view_count

      t.timestamps
    end
  end
end
