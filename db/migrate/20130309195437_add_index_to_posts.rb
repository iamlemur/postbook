class AddIndexToPosts < ActiveRecord::Migration
  add_index :posts, [:author_id]
end
