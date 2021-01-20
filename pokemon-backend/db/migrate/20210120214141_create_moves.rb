class CreateMoves < ActiveRecord::Migration[6.1]
  def change
    create_table :moves do |t|
      t.string :name
      t.string :url
      t.string :move_type

      t.timestamps
    end
  end
end
