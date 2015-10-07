class Frame < ActiveRecord::Base
  belongs_to :move

  validates :startup, presence: true
  validates :active, presence: true
  validates :recover, presence: true
  validates :blockadv, presence: true
  validates :hitadv, presence: true
  validates :cancelwindow, presence: true
end
