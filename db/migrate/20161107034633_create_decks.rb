class CreateDecks < ActiveRecord::Migration[5.0]
  def change
    create_table :decks do |t|
      t.string :backgroundimage
      t.string :backgroundcolour
      t.integer :maxcards
      t.string :name
      t.string :bordercolour
      t.string :borderthickness
      t.string :sets
      t.string :cards
      t.integer :cardsremaining

      t.timestamps
    end
  end
end
