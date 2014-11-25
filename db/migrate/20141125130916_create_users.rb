class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.date :birth
      t.string :cpf
      t.string :email
      t.boolean :admin

      t.timestamps
    end
  end
end
