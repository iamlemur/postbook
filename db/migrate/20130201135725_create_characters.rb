class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :first_name
      t.string :last_name
      t.string :full_name
      t.text :description
      t.integer :post_id
      t.boolean :discussion

      t.timestamps
    end
  end
end
