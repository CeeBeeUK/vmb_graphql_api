class Evidence < ActiveRecord::Base
  belongs_to :evidence_board

  validates :short_description, presence: true, uniqueness: { scope: :evidence_board_id, case_sensitive: false }
end