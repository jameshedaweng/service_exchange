class AddCategoryToPower < ActiveRecord::Migration
  def change
    add_column :powers, :category_id, :integer
  end
end
