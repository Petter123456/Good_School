class User < ApplicationRecord
  belongs_to :code_school
  has_one :profile
  has_many :projects, through: :teams
  has_many :teams

  scope :wyncoders, -> {where(code_school: CodeSchool.find_by(name:'wyncode')) }

def spam_email
  "spam+#{email}"

end
end
