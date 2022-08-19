# app/graphql/types/jsonb_input.rb
# frozen_string_literal: true

Types::JsonbType = GraphQL::ScalarType.define do
    name 'Jsonb'
  
    coerce_input -> (value) { JSON.parse(value) }
    coerce_result -> (value) { value }
end
  