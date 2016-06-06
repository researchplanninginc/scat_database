class CreateLookupTbChars < ActiveRecord::Migration
  def change
    create_table :lookup_tb_chars do |t|
      t.string :char_code
      t.string :description

      t.timestamps

    end
  end
end
