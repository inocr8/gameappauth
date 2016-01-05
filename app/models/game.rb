class Game < ActiveRecord::Base
  has_many :copies, dependent: :destroy
  has_many :users, through: :copies
end
