class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :license_id
      t.integer :author_id

      t.timestamps
    end
  end
end
