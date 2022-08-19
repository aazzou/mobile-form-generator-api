# app/graphql/types/role_type.rb
# frozen_string_literal: true


require 'graphql/batch'
Types::RoleType = GraphQL::ObjectType.define do
  name 'Role'

  field :id, !types.ID
  field :name, !types.String
end
