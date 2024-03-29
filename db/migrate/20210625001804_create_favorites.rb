class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :game_id
      t.string :name
      t.string :background_image
      t.integer :rating
      t.string :review

      t.timestamps
    end
  end
end
