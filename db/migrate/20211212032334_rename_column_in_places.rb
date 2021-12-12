class RenameColumnInPlaces < ActiveRecord::Migration[6.1]
  def change
    rename_column(:places, :name, :place_name)
  end
end
