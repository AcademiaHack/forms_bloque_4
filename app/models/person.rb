# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  name       :string
#  age        :integer
#  gender     :string
#  alien      :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Person < ApplicationRecord
  has_many :hobbies
  accepts_nested_attributes_for :hobbies, reject_if: :all_blank
end
