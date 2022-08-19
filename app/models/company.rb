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

class Company < ApplicationRecord
  belongs_to :partner
end
