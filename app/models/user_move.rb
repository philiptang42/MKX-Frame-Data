class UserMove < ActiveRecord::Base
  belongs_to :user
  belongs_to :move
end
