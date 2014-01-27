class Client < ActiveRecord::Base
  belongs_to :gym
  has_many :sessions
  has_many :settings
end
