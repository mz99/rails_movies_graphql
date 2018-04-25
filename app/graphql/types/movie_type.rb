Types::MovieType = GraphQL::ObjectType.define do
 name "Movie"

  field :id, !types.ID
  field :title, !types.String
  field :description, !types.String
  field :release_year, !types.Int
  # field :actors do
  #   type Types::ActorType
  #   argument :size, !types.Int, default_value: 10
  #   resolve -> (movie, args, ctx) {
  #     movie.actors.limit(args[:size])
  #   }
  # end
end
