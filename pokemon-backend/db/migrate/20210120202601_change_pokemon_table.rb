class ChangePokemonTable < ActiveRecord::Migration[6.1]
  def change 
    change_table :pokemons do |t| 
      t.remove :type
      t.string :type
    end
  end
end
