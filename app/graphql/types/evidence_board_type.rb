Types::EvidenceBoardType = GraphQL::ObjectType.define do
  name 'EvidenceBoard'

  field :id, !types.String
  field :label, !types.String

  field :event, Types::EventType do
    resolve ->(obj, _args, _ctx) { obj.event }
  end
end
