require 'rails_helper'

RSpec.describe Type, type: :model do
  it "should allow valid values" do
    Type::TYPES.each do |type|
      should allow_value(type).for(:name)
    end
  end

  subject { FactoryGirl.build(:type) }

  describe "model validations" do
    it { should validate_presence_of(:name) }
  end

  describe "associations" do
    it { should have_many(:moves)}
    it { should have_many(:products)}
    it { should have_many(:categories)}
  end
end
