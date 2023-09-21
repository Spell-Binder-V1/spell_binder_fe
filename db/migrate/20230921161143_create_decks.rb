class CreateDecks < ActiveRecord::Migration[7.0]
  def change
    create_table :decks do |t|
      t.string :name
      t.jsonb :cards, default: { main_board: [], side_board: [], maybe_board: [] }
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
