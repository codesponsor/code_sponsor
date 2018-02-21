class Resolvers::CreateProperty < GraphQL::Function
  # arguments passed as "args"
  argument :name, !types.String
  argument :url, !types.String

  # return type from the mutation
  type Types::PropertyType

  # the mutation method
  # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context (which would be discussed later)
  def call(_obj, args, ctx)
    ::Property.create!(
      user: ctx[:current_user],
      name: args[:name],
      url: args[:url],
    )

  rescue ActiveRecord::RecordInvalid => e
    # this would catch all validation errors and translate them to GraphQL::ExecutionError
    GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
  end
end