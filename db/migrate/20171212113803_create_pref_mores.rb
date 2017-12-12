class CreatePrefMores < ActiveRecord::Migration[5.0]
  def change
    create_table :pref_mores do |t|
      t.string :preference
      t.integer :weight
      t.references :user, foreign_key: true
    end
  end
end
