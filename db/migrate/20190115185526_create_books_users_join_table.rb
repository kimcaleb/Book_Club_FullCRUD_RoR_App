class CreateBooksUsersJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :books, :users do |t|
      t.index :books_id
      t.index :user_id
    end
  end
end
