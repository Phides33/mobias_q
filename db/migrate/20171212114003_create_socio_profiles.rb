class CreateSocioProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :socio_profiles do |t|
      t.integer :gender
      t.integer :age_bracket
      t.references :user, foreign_key: true
    end
  end
end
