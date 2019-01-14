class RemoveArrayFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :ARRAY, :string
  end
end
