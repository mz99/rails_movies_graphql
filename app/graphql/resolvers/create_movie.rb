class Resolvers::CreateMovie < GraphQL::Function
  argument :title, !types.String
  argument :release_year, !types.Int
  argument :description, !types.String

  type Types::MovieType

  def call(_obj, args, _ctx)
    Movie.create!(
      title: args[:title],
      release_year: args[:release_year],
      description: args[:description]
    )
  end
end
