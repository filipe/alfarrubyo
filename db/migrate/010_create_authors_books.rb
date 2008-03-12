class CreateAuthorsBooks < ActiveRecord::Migration
  def self.up
    create_table :authors_books do |t|
        t.integer :author_id
        t.integer :book_id
    end
  end

  def self.down
    drop_table :table
  end
end
