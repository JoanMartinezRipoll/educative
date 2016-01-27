class CreateWeightTransactions < ActiveRecord::Migration
  def change
    create_table :weight_transactions do |t|
      t.string :iban
      t.integer :weight
      t.references :banker, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
