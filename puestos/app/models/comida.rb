class Comida < ApplicationRecord
    self.table_name = 'Comida'
    self.primary_key = 'idComida'
    belongs_to :puesto, :foreign_key => 'idPuesto'
end
