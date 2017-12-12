class CreateOwnGains < ActiveRecord::Migration[5.0]
  def change
    create_table :own_gains do |t|
      t.string :emotion
      t.references :user, foreign_key: true
    end
  end
end
