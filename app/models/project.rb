class Project < ApplicationRecord
  belongs_to :team_lead, class_name: 'User'
  has_many :team_members, class_name: 'User'
  accepts_nested_attributes_for :tasks
end
