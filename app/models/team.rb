class Team < ApplicationRecord
  belongs_to :user_id
  belongs_to :project
end
