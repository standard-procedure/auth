class Role < ApplicationRecord
  belongs_to :parent, class_name: "Role", optional: true
  has_many :children, -> { order :name }, class_name: "Role", foreign_key: "parent_id", inverse_of: :parent
  has_and_belongs_to_many :users
  validates :name, presence: true, uniqueness: {scope: :parent_id}
end
