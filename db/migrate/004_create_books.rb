class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.integer :publisher_id
      t.integer :book_category_id
      t.string  :title, :limit => 100
      t.string  :isbn10, :limit => 10
      t.string  :isbn13, :limit => 13
      t.date    :released_at
      t.integer :edition
      t.timestamps
    end
  end

  def self.down
    drop_table :books
  end
end
