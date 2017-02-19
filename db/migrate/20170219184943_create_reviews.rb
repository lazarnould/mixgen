class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating
      t.references :child, index: true, foreign_key: true
      t.references :home, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
