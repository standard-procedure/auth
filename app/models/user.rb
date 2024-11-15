class User < ApplicationRecord
  devise :database_authenticatable, :recoverable, :rememberable, :validatable, :confirmable, :lockable, :timeoutable, :trackable
  validates :name, presence: true
end
