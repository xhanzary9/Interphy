class CreateComidas < ActiveRecord::Migration[5.0]
  def change
    create_table :comidas do |t|
      t.text :tipo
      t.float :costo
      t.references :puesto, foreign_key: true

      t.timestamps
    end
  end
end
