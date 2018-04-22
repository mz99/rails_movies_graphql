Types::QueryType = GraphQL::ObjectType.define do
  name "Query"


  field :allActors, !types[Types::ActorType] do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) { Actor.all }
  end
end
