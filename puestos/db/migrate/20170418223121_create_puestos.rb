class CreatePuestos < ActiveRecord::Migration[5.0]
  def change
    create_table :puestos do |t|
      t.string :nombre
      t.integer :numPuestoUNAM
      t.string :imagen
      t.time :horario
      t.string :info_general
      t.string :coordenadas

      t.timestamps
    end
  end
end
