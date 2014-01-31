class Session < ActiveRecord::Base
  belongs_to :client
  belongs_to :routine
  has_many :exercises, through: :routine

  validates :client, :routine, presence: true
end
