Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :createFiction, function: Resolvers::CreateFiction.new
  field :destroyFiction, function: Resolvers::DestroyFiction.new
end
