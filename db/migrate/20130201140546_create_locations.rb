class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :value

      t.timestamps
    end
  end
end
