class CreateLookupSubstrs < ActiveRecord::Migration
  def change
    create_table :lookup_substrs do |t|
      t.string :substr_code
      t.string :description

      t.timestamps

    end
  end
end
