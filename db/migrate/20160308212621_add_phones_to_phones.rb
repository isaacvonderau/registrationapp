class AddPhonesToPhones < ActiveRecord::Migration
  def change
    add_column :phones, :phone1, :string
    add_column :phones, :phone2, :string
    add_column :phones, :phone3, :string
  end
end
