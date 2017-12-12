class CreateWhynotmores < ActiveRecord::Migration[5.0]
  def change
    create_table :whynotmores do |t|
      t.string :reason
      t.string :category
      t.references :user, foreign_key: true
    end
  end
end
