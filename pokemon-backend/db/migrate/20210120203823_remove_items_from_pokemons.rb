class RemoveItemsFromPokemons < ActiveRecord::Migration[6.1]
  def change
    change_table :pokemons do |t|
      t.remove :type_id
    end
  end
end
