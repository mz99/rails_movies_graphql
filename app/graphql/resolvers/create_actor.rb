class Resolvers::CreateActor < GraphQL::Function
  argument :name, !types.String
  argument :image, !types.String

  type Types::ActorType

  def call(_obj, args, _ctx)
    Actor.create!(
      name: args[:name],
      image: args[:image],
    )
  end
end
