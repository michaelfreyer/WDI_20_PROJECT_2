class RemoveTimeFromTasksAgain < ActiveRecord::Migration
  def change
    remove_column :tasks_agains, :time, :date
  end
end
