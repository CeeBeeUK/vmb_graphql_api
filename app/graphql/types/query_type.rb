Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :events, !types[Types::EventType] do
    resolve ->(obj, args, ctx) {
      Event.all
    }
  end

  field :evidenceboards, !types[Types::EvidenceBoardType] do
    argument :event_id, types.String
    resolve ->(obj, args, ctx) {
      EvidenceBoard.where(event_id: args[:event_id])
    }
  end
end
