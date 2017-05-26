class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.string :name
      t.text :desctiption
      t.integer :value
      t.datetime :start_time
      t.text :recurring
      t.timestamps
    end
  end
end
