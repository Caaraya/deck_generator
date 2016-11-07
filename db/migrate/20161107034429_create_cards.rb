class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :deck
      t.string :layoutset
      t.string :images
      t.string :textboxes

      t.timestamps
    end
  end
end
