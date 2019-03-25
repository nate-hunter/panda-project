class CreateGifs < ActiveRecord::Migration[5.2]
  def change
    create_table :gifs do |t|
      t.string :name
      t.string :img_url
      t.string :music
      t.integer :likes

      t.timestamps
    end
  end
end
