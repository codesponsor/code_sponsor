Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createProperty, function: Resolvers::CreateProperty.new
  field :signInUser, function: Resolvers::SignInUser.new
end
