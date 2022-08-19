# app/graphql/types/company_type.rb
# frozen_string_literal: true

# == Schema Information
#
# Table name: companies
#
#  id         :bigint           not null, primary key
#  address    :string
#  email      :string
#  name       :string
#  phone      :string
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  partner_id :bigint
#
# Indexes
#
#  index_companies_on_partner_id  (partner_id)
#
# Foreign Keys
#
#  fk_rails_...  (partner_id => partners.id)
#


require 'graphql/batch'
Types::CompanyType = GraphQL::ObjectType.define do
  name 'Company'

  field :id, !types.ID
  field :name, !types.String
  field :email, !types.String
  field :phone, !types.String
  field :status, !types.Boolean

  field :partner, Types::PartnerType do
    # preload %i[author]
    resolve lambda { |obj, _args, _ctx|
      obj.partner
    }
  end

end
