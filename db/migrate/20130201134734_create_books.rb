class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :summary
      t.string :cover
      t.boolean :discussion
      t.integer :draft_status_id

      t.timestamps
    end
  end
end
