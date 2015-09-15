class CreateBirds < ActiveRecord::Migration
  def change
    create_table :birds do |t|
      t.integer :eggs

      t.timestamps null: false
    end
  end
end
