class RemoveLikesFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :likes, :integer
  end
end
