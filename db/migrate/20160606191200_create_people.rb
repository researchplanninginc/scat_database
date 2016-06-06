class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :person_id
      t.string :last_name
      t.string :first_name
      t.string :org

      t.timestamps

    end
  end
end
