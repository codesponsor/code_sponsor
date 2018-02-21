Types::PropertyType = GraphQL::ObjectType.define do
  name "Property"

  field :id, !types.ID
  field :user, -> { Types::UserType }
  field :name, !types.String
  field :url, !types.String
end
