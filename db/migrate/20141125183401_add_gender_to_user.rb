class AddGenderToUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.column :gender, :string, limit: 1
    end
  end
end
