class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.string :status
      t.timestamp :due_date
      t.string :priority
      t.decimal :estimated_time
      t.timestamps
    end
  end
end
