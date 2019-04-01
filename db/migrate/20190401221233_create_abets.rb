class CreateAbets < ActiveRecord::Migration[5.2]
  def change
    create_table :abets do |t|
      t.string :description
      t.integer :poor
      t.integer :acceptable
      t.integer :exceeds

      t.timestamps
    end
  end
end
