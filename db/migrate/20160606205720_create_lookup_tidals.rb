class CreateLookupTidals < ActiveRecord::Migration
  def change
    create_table :lookup_tidals do |t|
      t.string :tidal_code
      t.string :description

      t.timestamps

    end
  end
end
