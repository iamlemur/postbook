class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :summary
      t.text :body
      t.boolean :discussion
      t.integer :draft_status_id

      t.timestamps
    end
  end
end
