class AddInformationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :string
    add_column :users, :password, :string
    add_column :users, :street_address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :postal_code, :integer
    add_column :users, :country, :string
    add_column :users, :email_address, :string
  end
end
