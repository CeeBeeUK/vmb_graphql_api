class EvidenceBoard < ActiveRecord::Base
  belongs_to :event

  validates :position, uniqueness: { scope: :event_id, case_sensitive: false }
  validates :label, uniqueness: { scope: :event_id, case_sensitive: false }
end
