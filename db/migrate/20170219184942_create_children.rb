class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
      t.text :description


      t.timestamps null: false
    end
  end
end
