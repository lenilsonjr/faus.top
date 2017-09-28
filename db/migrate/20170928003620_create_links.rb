class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.text :url
      t.string :code
      t.integer :use_count
      t.string :created_by

      t.timestamps
    end
  end
end
