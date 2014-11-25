class AddRestrictionsToUserAttributes < ActiveRecord::Migration
  def change
    change_column :users, :first_name, :string, limit: 30
    change_column :users, :last_name, :string, limit: 30

    change_column_null :users, :username, false
    change_column_null :users, :first_name, false
    change_column_null :users, :last_name, false
    change_column_null :users, :cpf, false
    change_column_null :users, :birth, false
    change_column_null :users, :gender, false
    change_column_null :users, :email, false

    change_column_default :users, :username, ''
    change_column_default :users, :first_name, ''
    change_column_default :users, :last_name, ''
    change_column_default :users, :cpf, ''
    change_column_default :users, :gender, 'O'
    change_column_default :users, :email, ''
  end
end
