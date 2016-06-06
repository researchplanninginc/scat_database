class CreateSegments < ActiveRecord::Migration
  def change
    create_table :segments do |t|
      t.string :segment_id
      t.string :esi_prim
      t.string :esi_sec
      t.boolean :back_cliff
      t.boolean :back_low
      t.boolean :back_beach
      t.boolean :back_dune
      t.boolean :back_wetl
      t.boolean :back_lag
      t.boolean :back_delt
      t.boolean :back_chan
      t.boolean :back_man
      t.boolean :acc_along
      t.boolean :acc_back
      t.boolean :stage_back
      t.text :acc_desc

      t.timestamps

    end
  end
end
