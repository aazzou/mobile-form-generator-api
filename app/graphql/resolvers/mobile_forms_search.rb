require 'search_object/plugin/graphql'

class Resolvers::MobileFormsSearch
  # include SearchObject for GraphQL
  include SearchObject.module(:graphql)

  # scope is starting point for search
  scope { MobileForm.all }

  type types[Types::MobileFormType]

  # inline input type definition for the advance filter
  class MobileFormFilter < GraphQL::Schema::InputObject
    argument :OR, [self], required: false
    argument :name_contains, String, required: false
    argument :name_equal, String, required: false
    argument :company_id_equal, Int, required: true
  end

  # when "filter" is passed "apply_filter" would be called to narrow the scope
  option :filter, type: MobileFormFilter, with: :apply_filter

  # apply_filter recursively loops through "OR" branches
  def apply_filter(scope, value)
    branches = normalize_filters(value).reduce { |a, b| a.or(b) }
    scope.merge branches
  end

  def normalize_filters(value, branches = [])
    scope = MobileForm.all
    scope = scope.where('lower(name) LIKE ?', "%#{value[:name_contains].downcase}%") if value[:name_contains]
    scope = scope.where('lower(name) LIKE ?', "#{value[:name_equal].strip.downcase}") if value[:name_equal]
    scope = scope.where('company_id = ?', value[:company_id_equal]) if value[:company_id_equal]

    branches << scope

    value[:OR].reduce(branches) { |s, v| normalize_filters(v, s) } if value[:OR].present?

    branches
  end
end