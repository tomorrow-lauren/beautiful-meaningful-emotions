class AddAssociatedFeelingsTable < ActiveRecord::Migration
  def change
    create_table :associated_feelings do |t|
      t.integer :feeling_id
      t.integer :emotional_experience_id

      t.timestamps
    end
  end
end
