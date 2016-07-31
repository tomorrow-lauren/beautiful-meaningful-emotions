class AddEmotionsTable < ActiveRecord::Migration
  def change
    create_table :emotions do |t|
      t.string :emotion
      t.string :color
      t.text :description

      t.timestamps
    end
  end
end
