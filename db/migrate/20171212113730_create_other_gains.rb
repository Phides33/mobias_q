class CreateOtherGains < ActiveRecord::Migration[5.0]
  def change
    create_table :other_gains do |t|
      t.string :emotion
      t.references :user, foreign_key: true
    end
  end
end
