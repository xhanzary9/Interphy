class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_format_of :email, with: /\@ciencias\.unam.mx/, message: "Tu correo debe ser @ciencias.unam.mx"
  #has_many :calificas 
  has_many :puestos, dependent: :destroy#, :through => :calificas

end
