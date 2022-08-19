# app/graphql/types/partner_type.rb
# frozen_string_literal: true

# == Schema Information
#
# Table name: partners
#
#  id         :bigint           not null, primary key
#  address    :string
#  email      :string
#  name       :string
#  phone      :string
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


require 'graphql/batch'
Types::PartnerType = GraphQL::ObjectType.define do
  name 'Partner'

  field :id, !types.ID
  field :name, !types.String
  field :email, !types.String
  field :phone, !types.String
  field :status, !types.Boolean
end
