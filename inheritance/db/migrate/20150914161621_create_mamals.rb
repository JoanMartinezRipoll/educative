class CreateMamals < ActiveRecord::Migration
  def change
    create_table :mamals do |t|
      t.integer :pregnancy_time

      t.timestamps null: false
    end
  end
end
