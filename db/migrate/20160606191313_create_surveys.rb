class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :survey_id
      t.string :segment_id
      t.string :seg_list
      t.date :surv_date
      t.integer :surv_dint
      t.datetime :start_time
      t.datetime :stop_time
      t.string :tide_hgt
      t.string :surv_type
      t.string :surv_per1
      t.string :surv_per2
      t.string :surv_per3
      t.string :surv_per4
      t.string :surv_per5
      t.string :surv_per6
      t.text :surv_comm

      t.timestamps

    end
  end
end
