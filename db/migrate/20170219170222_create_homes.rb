class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :name
      t.string :street_name
      t.integer :number
      t.integer :zipcode
      t.string :city
      t.string :country
      t.integer :capacity
      t.integer :price
      t.integer :phone_number
      t.string :phone_prefix
      t.string :email
      t.text :description
      t.string :description_sentence
      t.integer :babysitters

      t.timestamps null: false
    end
  end
end
