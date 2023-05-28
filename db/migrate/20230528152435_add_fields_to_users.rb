class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :age, :integer
    add_column :users, :country, :string
    add_column :users, :password, :string
  end
end
