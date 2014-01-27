class Exercise < ActiveRecord::Base
  has_many :rtes
  has_many :settings
  has_many :performances
end
