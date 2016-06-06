class CreateLookupThicks < ActiveRecord::Migration
  def change
    create_table :lookup_thicks do |t|
      t.string :thick_code
      t.string :description

      t.timestamps

    end
  end
end
