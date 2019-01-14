class RemoveReviewFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :review, :text
  end
end
