require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid when required attributes are present' do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  context 'is invalid' do
    specify 'when password is less than 6 letters' do
      expect(FactoryGirl.build(:user, password: 'abcde')).not_to be_valid
    end
  end

  subject { FactoryGirl.build(:user) }

  describe "model validations" do
    it { should validate_presence_of(:fname) }
    it { should validate_presence_of(:lname) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
  end

  describe "associations" do
    it { should have_many(:reviews)}
    it { should have_many(:cart_items)}
    it { should have_many(:ordered_items)}
  end
end
