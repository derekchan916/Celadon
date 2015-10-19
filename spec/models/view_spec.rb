require 'rails_helper'

RSpec.describe View, type: :model do
  subject { FactoryGirl.build(:view) }

  describe "associations" do
    it { should belong_to(:user)}
    it { should belong_to(:product)}
  end
end
