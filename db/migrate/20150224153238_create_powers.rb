class CreatePowers < ActiveRecord::Migration
  def change
    create_table :powers do |t|
      t.string :title, null: false, default: "New Power"
      t.string :description

      t.timestamps null: false
    end
  end
end
