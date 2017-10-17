class Event < ActiveRecord::Base
  validates :name, presence: true, uniqueness: { case_sensitve: false, message: 'Event name must be unique' }

end