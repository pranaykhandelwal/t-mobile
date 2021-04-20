class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #  :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable, :confirmable, :lockable

  enum profession: {
    doctor: 0,
    compounder: 1,
    patient: 2,
    not_set:3
  }

  validate :profession
end
