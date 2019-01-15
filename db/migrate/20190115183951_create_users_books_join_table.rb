class CreateUsersBooksJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users_books, id: false do |t|
      t.belongs_to :users, index: true
      t.belongs_to :books, index: true
    end
  end
end
