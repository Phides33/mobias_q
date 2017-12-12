class CreateMobilityProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :mobility_profiles do |t|
      t.string :main_mobility_mode
      t.boolean :motor_vehicle_owner
      t.references :user, foreign_key: true
    end
  end
end
