# app/graphql/types/mobile_form_type.rb
# frozen_string_literal: true

# == Schema Information
#
# Table name: mobile_forms
#
#  id          :bigint           not null, primary key
#  description :string
#  json_config :jsonb            not null
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  company_id  :bigint
#
# Indexes
#
#  index_mobile_forms_on_company_id  (company_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#

require 'graphql/batch'
Types::MobileFormType = GraphQL::ObjectType.define do
  name 'MobileForm'

  field :id, !types.ID
  field :name, !types.String
  field :description, !types.String
  field :json_config, Types::JsonbType
  

  field :company, Types::CompanyType do
    # preload %i[author]
    resolve lambda { |obj, _args, _ctx|
      obj.company
    }
  end

end
