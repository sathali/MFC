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

require 'spec_helper'

describe Cookie do

  before { @cookie = Cookie.new(fortune: "Example Fortune", misfortune: "Example Misfortune") }

  subject { @cookie }

  it { should respond_to(:fortune) }
  it { should respond_to(:misfortune) }

  it { should be_valid }

  describe "when fortune is not present" do
    before { @cookie.fortune = " " }
    it { should_not be_valid }
  end

  describe "when misfortune is not present" do
    before { @cookie.misfortune = " " }
    it { should_not be_valid }
  end
end
