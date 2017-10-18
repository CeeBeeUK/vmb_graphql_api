Types::EvidenceBoardType = GraphQL::ObjectType.define do
  name 'EvidenceBoard'

  field :id, !types.String
  field :label, !types.String
end
