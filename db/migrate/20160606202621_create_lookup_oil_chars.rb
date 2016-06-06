class CreateLookupOilChars < ActiveRecord::Migration
  def change
    create_table :lookup_oil_chars do |t|
      t.string :char_code
      t.string :description

      t.timestamps

    end
  end
end
