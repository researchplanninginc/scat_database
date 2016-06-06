class CreateLookupPitChars < ActiveRecord::Migration
  def change
    create_table :lookup_pit_chars do |t|
      t.string :char_code
      t.string :description

      t.timestamps

    end
  end
end
