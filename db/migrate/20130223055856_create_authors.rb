class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :description
      t.integer :location_id

      t.timestamps
    end
  end
end
