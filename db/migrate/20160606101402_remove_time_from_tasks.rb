class RemoveTimeFromTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :time, :string
  end
end
