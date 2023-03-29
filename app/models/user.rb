class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:confirmable,
         :recoverable, :rememberable, :validatable
  
  # has_many :images
  has_one_attached :avatar
  # has_one_attached :picture
  has_one :payment
  accepts_nested_attributes_for :payment
end
