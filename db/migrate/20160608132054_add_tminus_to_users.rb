class AddTminusToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tminus, :integer
  end
end
