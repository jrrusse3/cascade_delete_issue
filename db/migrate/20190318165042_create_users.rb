class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :lname
      t.string :fname
      t.string :title
      t.string :office
      t.string :email
      t.string :phone
      t.string :role

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
