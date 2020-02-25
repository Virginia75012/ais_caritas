class AddOriginContactToFlats < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :origin_contact, :string
  end
end
