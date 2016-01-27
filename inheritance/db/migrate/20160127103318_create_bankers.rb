class CreateBankers < ActiveRecord::Migration
  def change
    create_table :bankers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
