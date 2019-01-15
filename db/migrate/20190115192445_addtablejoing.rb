class Addtablejoing < ActiveRecord::Migration[5.2]
  def change
    create_join_table :books, :users 
  end
end
