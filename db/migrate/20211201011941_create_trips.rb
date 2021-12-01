class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :location
      t.datetime :start_date
      t.datetime :end_date
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
