class CreateMusicRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :music_records do |t|
      t.string :title
      t.string :photo
      t.integer :price
      t.text :description
      t.string :damage_assessment

      t.timestamps
    end
  end
end
