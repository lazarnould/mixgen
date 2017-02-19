class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.string :phone_prefix
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
