Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :allProperties, function: Resolvers::PropertiesSearch
end
