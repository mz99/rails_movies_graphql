Types::UserType = GraphQL::ObjectType.define do
 name "User"

  field :id, !types.ID
  field :username, !types.String

  # field :actors do
  #   type Types::ActorType
  #   argument :size, !types.Int, default_value: 10
  #   resolve -> (movie, args, ctx) {
  #     movie.actors.limit(args[:size])
  #   }
  # end
end
