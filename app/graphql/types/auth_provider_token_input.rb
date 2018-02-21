Types::AuthProviderTokenInput = GraphQL::InputObjectType.define do
  name "AUTH_PROVIDER_TOKEN"

  argument :token, !types.String
end