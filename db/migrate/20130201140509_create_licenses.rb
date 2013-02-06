class CreateLicenses < ActiveRecord::Migration
  def change
    create_table :licenses do |t|
      t.string :name
      t.boolean :valid

      t.timestamps
    end
  end
end
