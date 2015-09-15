class CreateShareholders < ActiveRecord::Migration
  def change
    create_table :shareholders do |t|
      t.string :name
      t.integer :trustee_id
      t.references :type, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
