class CreatePlaces < ActiveRecord::Migration[6.1]
  def change
    create_table :places do |t|
      t.string :name
      t.belongs_to :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
