class CreateCompanyShareholders < ActiveRecord::Migration
  def change
    create_table :company_shareholders do |t|
      t.integer :hrm_number

      t.timestamps null: false
    end
  end
end
