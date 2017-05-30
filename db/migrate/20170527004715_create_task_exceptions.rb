class CreateTaskExceptions < ActiveRecord::Migration[5.0]
  def change
    create_table :task_exceptions do |t|
      t.references :task, foreign_key: true
      t.datetime :time
      t.timestamps
    end
  end
end
