class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true, null: false
      t.references :incident, index: true, null: false
      t.text :description, null: false, default: ""

      t.timestamps
    end
  end
end
