class Add < ActiveRecord::Migration[5.0]
  def change
  	add_column :usuarios, :correo, :string
  	add_column :usuarios, :contrasenia, :string
  	add_column :usuarios, :username, :string
  end
end
