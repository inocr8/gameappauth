class User < ActiveRecord::Base
  has_many :copies
  has_many :games, through: :copies
end
