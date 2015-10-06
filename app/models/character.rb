class Character < ActiveRecord::Base
  has_many :moves

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
end
