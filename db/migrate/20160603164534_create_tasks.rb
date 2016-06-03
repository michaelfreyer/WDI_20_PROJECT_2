class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :date
      t.string :time
      t.string :category

      t.timestamps null: false
    end
  end
end
