Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createActor, function:Resolvers::CreateActor.new
end
