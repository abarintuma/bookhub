class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.text :description
      t.decimal :price, precision: 8, scale: 2
      t.date :published_at

      t.timestamps
    end
  end
end
