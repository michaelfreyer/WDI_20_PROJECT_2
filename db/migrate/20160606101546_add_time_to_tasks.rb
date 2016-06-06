class AddTimeToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :time, :date
  end
end
