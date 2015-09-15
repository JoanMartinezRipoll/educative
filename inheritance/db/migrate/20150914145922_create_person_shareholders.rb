class CreatePersonShareholders < ActiveRecord::Migration
  def change
    create_table :person_shareholders do |t|
      t.string :last_name
      t.date :birthdate

      t.timestamps null: false
    end
  end
end
