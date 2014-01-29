class Session < ActiveRecord::Base
  belongs_to :client
  belongs_to :routine

  validates :client, :routine, presence: true
end
