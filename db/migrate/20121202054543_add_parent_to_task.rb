class AddParentToTask < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.integer :parent_id
    end
  end
end
