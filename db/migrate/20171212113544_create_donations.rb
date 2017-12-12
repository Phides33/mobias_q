class CreateDonations < ActiveRecord::Migration[5.0]
  def change
    create_table :donations do |t|
      t.integer :amount_bracket
      t.integer :year
      t.references :cause, foreign_key: true
    end
  end
end
