class AddIndexToLinks < ActiveRecord::Migration[5.0]
  def change
    add_index :links, :code, unique: true
  end
end
