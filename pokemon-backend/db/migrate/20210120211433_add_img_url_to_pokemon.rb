class AddImgUrlToPokemon < ActiveRecord::Migration[6.1]
  def change
    change_table :pokemons do |t|
      t.string :img_url 
    end
  end
end
