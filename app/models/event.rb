class Event < ActiveRecord::Base

  has_many :evidence_boards

  validates :name, presence: true, uniqueness: { case_sensitve: false, message: 'Event name must be unique' }

end
