class CreateDraftStatuses < ActiveRecord::Migration
  def change
    create_table :draft_statuses do |t|
      t.string :value

      t.timestamps
    end
  end
end
