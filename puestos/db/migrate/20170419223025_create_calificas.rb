class CreateCalificas < ActiveRecord::Migration[5.0]
  def change
    create_table :calificas do |t|
      t.references :user, foreign_key: true
      t.references :puesto, foreign_key: true
      t.text :comentario
      t.integer :estrellas, limit: 5

      t.timestamps
    end
  end
end
