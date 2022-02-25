class CreateGigs < ActiveRecord::Migration[6.1]
  def change
    create_table :gigs do |t|
      t.string :name
      t.date :date
      t.string :area
      t.integer :tickets
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
