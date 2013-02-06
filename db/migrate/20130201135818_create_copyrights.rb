class CreateCopyrights < ActiveRecord::Migration
  def change
    create_table :copyrights do |t|
      t.integer :license_id

      t.timestamps
    end
  end
end
