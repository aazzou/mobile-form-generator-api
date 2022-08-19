# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string
#  fullname        :string
#  password_digest :string
#  status          :boolean          default(TRUE), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  company_id      :bigint
#  partner_id      :bigint
#  role_id         :bigint
#
# Indexes
#
#  index_users_on_company_id  (company_id)
#  index_users_on_partner_id  (partner_id)
#  index_users_on_role_id     (role_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (partner_id => partners.id)
#  fk_rails_...  (role_id => roles.id)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
