class TaskException < ApplicationRecord
  belongs_to :task

  validates :time, presence: true
end
