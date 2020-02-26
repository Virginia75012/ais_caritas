class AddTitleToFlat < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :title, :text
  end
end
