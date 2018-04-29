Types::UserType = GraphQL::ObjectType.define do
 name "User"

  field :id, !types.ID
  field :username, !types.String
  field :movies do
    type types[Types::MovieType]
    argument :size, types.Int, default_value: 10
    resolve -> (user, args, ctx) {
      #user.movies.limit(args[:size])
      user.movies
    }
  end

end
