Types::ActorType = GraphQL::ObjectType.define do
  name 'Actor'

  field :id, !types.ID
  field :name, !types.String
  field :image, !types.String
  field :movies do
    type types[Types::MovieType]
    argument :size, types.Int, default_value: 10
    resolve -> (actor, args, ctx) {
      actor.movies.limit(args[:size])
    }
  end
end
