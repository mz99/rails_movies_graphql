Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :allActors, !types[Types::ActorType] do
    resolve -> (obj, args, ctx) { Actor.all }
  end

  field :actor, Types::ActorType do
    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      Actor.find(args[:id])
    }
  end

  field :allMovies, !types[Types::MovieType] do
    resolve -> (obj, args, ctx) { Movie.all }
  end

  field :movie, Types::MovieType do
    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      Movie.find(args[:id])
    }
  end

  field :allUsers, !types[Types::UserType] do
    resolve -> (obj, args, ctx) { User.all }
  end

  field :user, Types::UserType do
    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      User.find(args[:id])
    }
  end

end
