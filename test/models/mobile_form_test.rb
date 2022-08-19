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

require 'test_helper'

class MobileFormTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
