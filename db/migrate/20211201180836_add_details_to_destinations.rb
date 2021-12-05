class AddDetailsToDestinations < ActiveRecord::Migration[6.1]
  def change
    add_column :destinations, :name, :string
    add_column :destinations, :lat, :decimal, {:precision=>10, :scale=>6}
    add_column :destinations, :long, :decimal, {:precision=>10, :scale=>6}
  end
end