class RemoveTimeFromTasksAgain < ActiveRecord::Migration
  def change
    remove_column :tasks, :time, :date
  end
end
