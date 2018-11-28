class Resolvers::DestroyFiction < GraphQL::Function
  argument :id, !types.ID

  type Types::FictionType

  def call(_obj, args, _ctx)
    fiction = Fiction.find(args[:id])
    fiction.update(name: args[:name], description: args[:description])
  end
end
