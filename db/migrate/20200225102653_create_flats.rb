class CreateFlats < ActiveRecord::Migration[6.0]
  def change
    create_table :flats do |t|
      t.string :address
      t.string :typology
      t.integer :area
      t.integer :rent
      t.integer :rental_charges
      t.string :current_state
      t.string :appartement_condition
      t.text :message
      t.boolean :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
