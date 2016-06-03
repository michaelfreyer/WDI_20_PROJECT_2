class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.number :mobile

      t.timestamps null: false
    end
  end
end
