class AddUrlToTypes < ActiveRecord::Migration[6.1]
  def change
    add_column :types, :url, :string
  end
end
