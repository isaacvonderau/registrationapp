class RemovePhone1FromPhones < ActiveRecord::Migration
  def change
    remove_column :phones, :phone1, :integer
    remove_column :phones, :phone2, :integer
    remove_column :phones, :phone3, :integer
  end
end
