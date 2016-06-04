class RemoveDateFromTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :date, :string
  end
end
