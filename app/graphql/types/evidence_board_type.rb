Types::EvidenceBoardType = GraphQL::ObjectType.define do
  name 'EvidenceBoard'

  field :id, !types.String
  field :label, !types.String

  field :event, Types::EventType do
    resolve ->(obj, args, ctx) { obj.event }
  end
end
