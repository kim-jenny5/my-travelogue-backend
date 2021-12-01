class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.belongs_to :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
