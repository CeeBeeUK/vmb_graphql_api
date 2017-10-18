Types::EventType = GraphQL::ObjectType.define do
  name 'Event'

  field :id, !types.String
  field :name, !types.String

  field :evidence_boards, !types[Types::EvidenceBoardType]
end
