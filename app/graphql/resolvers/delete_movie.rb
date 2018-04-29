class Resolvers::DeleteMovie < GraphQL::Function
  argument :title, !types.String


  type Types::MovieType

  def call(_obj, args, _ctx)
    m = Movie.find_by(title: args[:title])
    m.destroy
  end
end
