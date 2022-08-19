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

require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
