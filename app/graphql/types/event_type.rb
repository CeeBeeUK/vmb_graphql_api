Types::EventType = GraphQL::ObjectType.define do
  name 'Event'

  field :id, !types.String
  field :name, !types.String
end
