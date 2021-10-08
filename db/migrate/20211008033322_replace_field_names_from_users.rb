class ReplaceFieldNamesFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :first_name
    remove_column :users, :last_name
    add_column :users, :username, :string, null: false
  end
end
