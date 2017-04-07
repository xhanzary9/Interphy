class Puesto < ApplicationRecord
    self.table_name = 'Puesto'
    self.primary_key = 'idPuesto'
    has_many :comidas, :foreign_key => 'idComida'
end
