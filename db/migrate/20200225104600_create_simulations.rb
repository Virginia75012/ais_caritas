class CreateSimulations < ActiveRecord::Migration[6.0]
  def change
    create_table :simulations do |t|

      t.timestamps
    end
  end
end
