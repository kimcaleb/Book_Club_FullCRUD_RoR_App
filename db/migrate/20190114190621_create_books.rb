class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :description
      t.string :image
      t.string :link
      t.integer :likes
      t.text :review

      t.timestamps
    end
  end
end
