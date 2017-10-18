Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :events, !types[Types::EventType] do
    resolve -> (obj, args, ctx) {
      Event.all
    }
  end
end
