class Resolvers::DestroyFiction < GraphQL::Function
  argument :id, !types.ID

  type Types::FictionType

  def call(_obj, args, _ctx)
    Fiction.destroy(args[:id])
  end
end
