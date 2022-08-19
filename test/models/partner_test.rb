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

require 'test_helper'

class PartnerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
