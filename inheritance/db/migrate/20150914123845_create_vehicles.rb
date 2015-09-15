#STI
class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :color
      t.integer :register_num
      t.string :type
      t.integer :wheel_number
      t.integer :sail_lenght
      t.belongs_to :person, index: true
      t.timestamps null: false
    end
  end
end
