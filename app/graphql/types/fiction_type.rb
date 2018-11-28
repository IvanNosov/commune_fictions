# defines a new GraphQL type
Types::FictionType = GraphQL::ObjectType.define do
  name 'Fiction'

  field :id, !types.ID
  field :name, !types.String
  field :description, !types.String
end
