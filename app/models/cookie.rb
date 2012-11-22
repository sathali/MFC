# == Schema Information
#
# Table name: cookies
#
#  id         :integer          not null, primary key
#  fortune    :string(255)
#  misfortune :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cookie < ActiveRecord::Base
  attr_accessible :fortune, :misfortune

    validates :fortune, presence: true
    validates :misfortune, presence: true
end
