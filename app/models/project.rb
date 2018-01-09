class Project < ApplicationRecord
  belongs_to :user
  has_many :teams
  has_many :users, through: :teams

end
