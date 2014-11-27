class CreateEstablishments < ActiveRecord::Migration
  def change
    create_table :establishments do |t|
      t.string :address
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
