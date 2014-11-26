class CreateSupports < ActiveRecord::Migration
  def change
    create_table :supports do |t|
      t.references :incident, index: true, null: false
      t.references :user, index: true, null: false

      t.timestamps
    end
  end
end
