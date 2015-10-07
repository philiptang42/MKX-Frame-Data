class User < ActiveRecord::Base
  has_many :characters,
    through: :user_characters
  has_many :user_characters
  has_many :moves,
    through: :user_moves
  has_many :user_moves
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true, uniqueness: true

  def self.search(query)
    where("username ILIKE ?", "%#{query}%")
  end
end
