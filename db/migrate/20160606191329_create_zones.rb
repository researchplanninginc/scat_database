class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
      t.string :zone_id
      t.string :zone_name
      t.string :survey_id
      t.string :tidal_zone
      t.float :width
      t.float :oil_dist
      t.string :oil_thick
      t.string :oil_char
      t.string :substr
      t.float :tb_cnt
      t.float :tb_area
      t.string :tb_arunit
      t.float :tb_mavsize
      t.string :tb_
      t.float :lgsize
      t.string :tb_type
      t.float :p_canopy
      t.float :p_oilbot
      t.float :p_oiltop
      t.string :esi
      t.string :oil_cat
      t.string :source
      t.text :zone_comm

      t.timestamps

    end
  end
end
