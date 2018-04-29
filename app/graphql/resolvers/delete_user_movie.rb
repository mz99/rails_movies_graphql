class Resolvers::DeleteUserMovie < GraphQL::Function
  argument :username, !types.String

  input_field :username, types.String
  input_field :id, types.ID


  type Types::UserType

  def call(_obj, args, _ctx)
    user = User.find_by( username: (inputs[:username]) )
    user.movies.delete( Movie.find(inputs[:id]) )
  end
end
