class Routine < ActiveRecord::Base
  has_many :rtes
  has_many :sessions
end
