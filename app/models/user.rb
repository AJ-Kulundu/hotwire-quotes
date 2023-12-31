class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable,:registerable, :recoverable, :rememberable, :trackable and :omniauthable
  devise :database_authenticatable, :validatable

  belongs_to :company

  def name
    email.split('@').first.capitalize
  end
  
end
