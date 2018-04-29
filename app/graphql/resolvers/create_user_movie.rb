class Resolvers::CreateUserMovie < GraphQL::Function
  argument :username, !types.String


  type Types::UserType

  def call(_obj, args, _ctx)
    User.create!(
      username: args[:username],
    )
  end
end
