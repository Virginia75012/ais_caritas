class AddDefaultValueToFlatsStatus < ActiveRecord::Migration[6.0]
  def change
    change_column :flats, :status, :boolean, default: false
  end
end
