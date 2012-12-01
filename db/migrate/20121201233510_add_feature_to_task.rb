class AddFeatureToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :feature_id, :integer
  end
end
