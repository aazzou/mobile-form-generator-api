# frozen_string_literal: true

Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :forms, !types[Types::MobileFormType] do
    resolve lambda { |_obj, _args, ctx|
      if ctx[:current_user].blank?
        raise GraphQL::ExecutionError, 'Authentication required'
      end
      puts MobileForm.all
      MobileForm.all
    }
  end

  field :mobile_forms_search, function: Resolvers::MobileFormsSearch
end
