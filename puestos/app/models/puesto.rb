class Puesto < ApplicationRecord
	has_many :calificas
	has_many :users#, :through => :calificas 
end
