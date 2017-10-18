Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'Query root for this schema'
  field :events, !types[Types::EventType] do
    resolve ->(obj, args, ctx) {
      Event.all
    }
  end

  field :event, !types[Types::EventType] do
    description 'Return a single event'
    argument :id, !types.ID
    resolve ->(obj, args, ctx) {
      # Event.where(id: args[:id]).first
      Event.where(id: args[:id])
    }
  end

  field :evidenceboards, !types[Types::EvidenceBoardType] do
    argument :event_id, types.String
    resolve ->(obj, args, ctx) {
      EvidenceBoard.where(event_id: args[:event_id])
    }
  end
end
