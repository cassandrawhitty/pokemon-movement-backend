class ChangeTypeInPokemon < ActiveRecord::Migration[6.1]
  def change
    change_table :pokemons do |t| 
      t.remove :type 
      t.string :pokemon_type
    end
  end
end
