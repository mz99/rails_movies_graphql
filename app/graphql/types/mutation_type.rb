Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createActor, function:Resolvers::CreateActor.new
  field :createUser, function:Resolvers::CreateUser.new
  field :createMovie, function:Resolvers::CreateMovie.new


end
