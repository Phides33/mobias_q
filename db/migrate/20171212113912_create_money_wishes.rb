class CreateMoneyWishes < ActiveRecord::Migration[5.0]
  def change
    create_table :money_wishes do |t|
      t.string :wish
      t.integer :weight
      t.references :user, foreign_key: true
    end
  end
end
