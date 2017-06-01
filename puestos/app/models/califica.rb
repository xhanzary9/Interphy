class Califica < ApplicationRecord
	validates :user_id, uniqueness: { scope: :puesto_id, message: "Ya has hecho un comentario" }

  	belongs_to :user
  	belongs_to :puesto
end
