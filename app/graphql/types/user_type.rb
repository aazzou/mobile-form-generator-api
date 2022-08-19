# frozen_string_literal: true

# app/graphql/types/comment_type.rb

require 'graphql/batch'
Types::UserType = GraphQL::ObjectType.define do
  name 'User'

  field :id, !types.ID
  field :fullname, !types.String
  field :email, !types.String
  field :status, !types.Boolean


  field :partner, Types::PartnerType do
    # preload %i[author]
    resolve lambda { |obj, _args, _ctx|
      obj.partner
    }
  end

  field :company, Types::CompanyType do
    # preload %i[author]
    resolve lambda { |obj, _args, _ctx|
      obj.company
    }
  end

  field :role, Types::RoleType do
    # preload %i[author]
    resolve lambda { |obj, _args, _ctx|
      obj.role
    }
  end
  
end
