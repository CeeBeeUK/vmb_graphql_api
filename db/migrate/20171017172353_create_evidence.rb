class CreateEvidence < ActiveRecord::Migration[5.1]
  def change
    create_table :evidence, id: :uuid do |t|
      t.string :short_description
      t.string :long_description
      t.string :transcript
      t.references :evidence_board, type: :uuid, foreign_key: true
    end
  end
end
