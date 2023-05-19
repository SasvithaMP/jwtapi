class Task < ApplicationRecord
  belongs_to :project
  belongs_to :assignee, class_name: 'User'

  after_create :send_assignment_email
end
