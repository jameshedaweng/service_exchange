class AddGlyphToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :glyph, :string, null:false, default: "fa-cog"
  end
end
