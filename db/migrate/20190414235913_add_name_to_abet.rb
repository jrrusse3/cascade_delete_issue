class AddNameToAbet < ActiveRecord::Migration[5.2]
  def change
    add_column :abets, :name, :string
  end
end
