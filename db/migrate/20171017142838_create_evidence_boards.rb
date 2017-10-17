class CreateEvidenceBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :evidence_boards, id: :uuid do |t|
      t.integer :position
      t.string :label
      t.references :event, type: :uuid, foreign_key: true
    end
  end
end
