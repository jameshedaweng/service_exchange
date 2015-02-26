class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, null: false, default: "New Category"
      t.string :theme_color, null: false, default: "#333333"

      t.timestamps null: false
    end
  end
end
