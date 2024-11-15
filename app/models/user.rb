class User < ApplicationRecord
  devise :two_factor_authenticatable, :recoverable, :rememberable, :validatable, :confirmable, :lockable, :timeoutable, :trackable
  validates :name, presence: true
end
