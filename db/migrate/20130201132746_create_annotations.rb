class CreateAnnotations < ActiveRecord::Migration
  def change
    create_table :annotations do |t|
      t.integer :post_id
      t.integer :author_id
      t.integer :paragraph
      t.integer :start_word
      t.integer :end_word

      t.timestamps
    end
  end
end
