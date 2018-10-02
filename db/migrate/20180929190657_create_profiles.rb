class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :title
      t.string :first_name
      t.string :middle_initial
      t.string :last_name
      t.string :academic_initial
      t.text :about
      t.string :country
      t.string :city
      t.string :postcode
      t.boolean :hide_address
      t.integer :phone_number
      t.integer :extension

      t.string :location

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
