class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.date :date
      t.string :matched_user
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
