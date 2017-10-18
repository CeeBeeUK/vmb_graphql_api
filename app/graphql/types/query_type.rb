Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'Query root for this schema'
  field :events, !types[Types::EventType] do
    resolve ->(_obj, _args, _ctx) { Event.all }
  end

  field :event, !types[Types::EventType] do
    description 'Return a single event'
    argument :id, !types.ID
    resolve lambda do |_obj, args, _ctx|
      # Event.where(id: args[:id]).first
      Event.where(id: args[:id])
    end
  end

  field :evidenceboards, !types[Types::EvidenceBoardType] do
    argument :event_id, types.String
    resolve lambda do |_obj, args, _ctx|
      EvidenceBoard.where(event_id: args[:event_id])
    end
  end
end
