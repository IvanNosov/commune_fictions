Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :allFictions, !types[Types::FictionType] do
    resolve ->(_obj, _args, _ctx) { Fiction.all }
  end

  field :fiction, Types::FictionType do
    argument :id, !types.ID
    resolve ->(_obj, args, _ctx) { Fiction.find(args[:id]) }
  end
end
