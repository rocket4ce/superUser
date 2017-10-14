class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:user, :admin, :user_vip]

  has_many :posts

  before_create :usuario_cuando_ser_registre_sea_usuario_normal

  private

	  def usuario_cuando_ser_registre_sea_usuario_normal
	  	self.role = :user
	  end
end
