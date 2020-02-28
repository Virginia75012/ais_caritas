class AddFieldsInSimulations < ActiveRecord::Migration[6.0]
  def change
    add_column :simulations, :zone, :string
    add_column :simulations, :area, :integer
    add_column :simulations, :percentage, :integer
  end
end
