class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name
      t.string :box_art

      t.timestamps
    end
  end
end
