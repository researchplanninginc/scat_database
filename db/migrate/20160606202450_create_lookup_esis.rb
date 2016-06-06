class CreateLookupEsis < ActiveRecord::Migration
  def change
    create_table :lookup_esis do |t|
      t.string :esi_code
      t.string :description

      t.timestamps

    end
  end
end
