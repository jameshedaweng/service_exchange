class AddUserToPower < ActiveRecord::Migration
  def change
    add_column :powers, :user_id, :integer
  end
end
