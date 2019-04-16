class RemovePoorFromAbets < ActiveRecord::Migration[5.2]
  def change
    remove_column :abets, :poor, :integer
    remove_column :abets, :acceptable, :integer
    remove_column :abets, :exceeds, :integer
  end
end
