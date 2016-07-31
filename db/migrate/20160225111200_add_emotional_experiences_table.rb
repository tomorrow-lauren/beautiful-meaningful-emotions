class AddEmotionalExperiencesTable < ActiveRecord::Migration
  def change
    create_table :emotional_experiences do |t|
      t.integer :user_id
      t.integer :emotion_id

      t.timestamps
    end

  end
end
