class AddFeelingsTable < ActiveRecord::Migration
  def change
    create_table :feelings do |t|
      t.string :feeling

      t.timestamps
    end
  end
end
