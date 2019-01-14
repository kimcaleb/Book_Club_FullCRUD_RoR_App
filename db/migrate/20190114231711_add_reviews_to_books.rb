class AddReviewsToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :reviews, :text
    add_column :books, :ARRAY, :string
  end
end
