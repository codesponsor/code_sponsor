class Resolvers::SignInUser < GraphQL::Function
  argument :token, !Types::AuthProviderTokenInput

  # defines inline return type for the mutation
  type do
    name 'SignInPayload'

    field :token, types.String
    field :user, Types::UserType
  end

  def call(_obj, args, ctx)
    input = args[:token]
    token = input[:token]

    # basic validation
    return unless token

    user = User.find_by_token token

    # ensures we have the correct user
    return unless user

    ctx[:session][:token] = token

    OpenStruct.new(
      user: user,
      token: token
    )
  end
end