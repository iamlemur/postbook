class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :author_id
      t.belongs_to :favoritable, polymorphic: true

      t.timestamps
    end
    add_index :favorites, [:favoritable_id, :favoritable_type]
  end
end
