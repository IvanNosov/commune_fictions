class Resolvers::CreateFiction < GraphQL::Function
  argument :name, !types.String
  argument :description, !types.String

  type Types::FictionType

  def call(_obj, args, _ctx)
    Fiction.create!(
      name: args[:name],
      description: args[:description]
    )
  end
end
