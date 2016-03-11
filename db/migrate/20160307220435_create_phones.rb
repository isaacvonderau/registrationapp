class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :phone1
      t.string :phone2
      t.string :phone3
      t.string :user_name

      t.timestamps null: false
    end
  end
end
