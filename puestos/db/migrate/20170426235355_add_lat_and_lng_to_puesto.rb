class AddLatAndLngToPuesto < ActiveRecord::Migration[5.0]
  def change
    add_column :puestos, :lat, :string
    add_column :puestos, :lng, :string
  end
end
