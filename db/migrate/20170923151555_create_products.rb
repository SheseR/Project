class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.text :description
      t.timestamps

      t.index :title, unique: true
    end
  end
end
