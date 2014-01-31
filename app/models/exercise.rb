class Exercise < ActiveRecord::Base
  has_many :rtes
  has_many :settings
  has_many :performances

  accepts_nested_attributes_for :performances, :settings
end
