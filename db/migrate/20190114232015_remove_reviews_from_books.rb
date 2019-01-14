class RemoveReviewsFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :reviews, :string
  end
end
