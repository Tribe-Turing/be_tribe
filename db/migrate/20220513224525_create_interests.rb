class CreateInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :interests do |t|
      t.string :sports
      t.string :night_life
      t.string :networking
      t.string :traveling
      t.string :video_games
      t.string :cinema
      t.string :music
      t.string :nature
      t.string :food
      t.string :art
      t.string :tech
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
