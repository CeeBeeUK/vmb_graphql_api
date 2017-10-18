class EvidenceBoard < ActiveRecord::Base
  belongs_to :event
  has_many :evidence_items

  validates :position, uniqueness: { scope: :event_id, case_sensitive: false }
  validates :label, uniqueness: { scope: :event_id, case_sensitive: false }
end
