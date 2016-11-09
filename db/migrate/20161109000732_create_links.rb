class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.text :original
      t.integer :count
      t.string :slug

      t.timestamps
    end
  end
end
