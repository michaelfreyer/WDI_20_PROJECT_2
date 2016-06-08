class AddTminusToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :tminus, :integer
  end
end
