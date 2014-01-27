class Setting < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :client
end
