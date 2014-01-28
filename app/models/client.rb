class Client < ActiveRecord::Base
  belongs_to :gym
  has_many :sessions
  has_many :settings

  def name
    self.first_name + " " + self.last_name
  end
end
