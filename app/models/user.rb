class User < ApplicationRecord
  has_one :profile, dependent: :destroy

  # You should not add first_name last_name validation message here,
  # because those are profile model attributes, Not user model
  #validates_presence_of :first_name, :last_name
  accepts_nested_attributes_for :profile

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
