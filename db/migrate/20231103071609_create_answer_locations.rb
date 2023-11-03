class CreateAnswerLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :answer_locations do |t|
      t.references :answer, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
