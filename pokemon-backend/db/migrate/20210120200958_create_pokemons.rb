class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :url
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
