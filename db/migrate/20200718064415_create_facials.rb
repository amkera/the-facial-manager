class CreateFacials < ActiveRecord::Migration[6.0]
  def change
    create_table :facials do |t|
      t.date :facial_date
      t.time :facial_time
      t.boolean :acne
      t.boolean :cystic_acne
      t.boolean :deep_pitted_scars
      t.boolean :dryness
      t.boolean :dullness
      t.boolean :flakiness
      t.boolean :flat_dark_scars
      t.boolean :redness
      t.boolean :wrinkles
      t.text :other

      t.belongs_to :client
      t.belongs_to :esthetician

      t.timestamps null: false 
    end
  end
end
