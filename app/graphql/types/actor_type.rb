Types::ActorType = GraphQL::ObjectType.define do
  # this type is named `Link`
  name 'Actor'


  field :id, !types.ID
  field :name, !types.String
  field :image, !types.String
end
