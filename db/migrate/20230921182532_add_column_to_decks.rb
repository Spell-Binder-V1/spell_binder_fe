class AddColumnToDecks < ActiveRecord::Migration[7.0]
  def change
    add_column :decks, :description, :string
  end
end
