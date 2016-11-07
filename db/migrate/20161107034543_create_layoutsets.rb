class CreateLayoutsets < ActiveRecord::Migration[5.0]
  def change
    create_table :layoutsets do |t|
      t.string :name
      t.string :images
      t.string :textboxes
      t.string :cards
      t.string :deck
      t.integer :cardcollection
      t.string :foregroundcolour
      t.string :borderthickness
      t.string :bordercolour

      t.timestamps
    end
  end
end
