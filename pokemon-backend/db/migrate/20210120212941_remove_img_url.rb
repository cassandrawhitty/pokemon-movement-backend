class RemoveImgUrl < ActiveRecord::Migration[6.1]
  def change
    change_table :pokemons do |t|
      t.remove "img_url"
    end
  end
end
