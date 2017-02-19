class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_number
      t.string :phone_prefix
      t.references :home, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
