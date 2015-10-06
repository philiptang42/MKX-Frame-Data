class Move < ActiveRecord::Base
  belongs_to :character

  validates :name, presence: true
  validates :button_command, presence: true
  validates :type, presence: true
  validates :damage, presence: true
end
