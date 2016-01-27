class CreateColorTransactions < ActiveRecord::Migration
  def change
    create_table :color_transactions do |t|
      t.string :iban
      t.string :color
      t.references :banker, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
