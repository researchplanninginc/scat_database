class CreatePits < ActiveRecord::Migration
  def change
    create_table :pits do |t|
      t.string :pit_id
      t.string :pit_name
      t.string :survey_id
      t.string :tidal_zone
      t.integer :p_depth
      t.string :p_oil_char
      t.integer :p_oil_bot
      t.integer :p_oil_top
      t.float :p_oil_dist

      t.timestamps

    end
  end
end
