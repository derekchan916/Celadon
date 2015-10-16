require 'rails_helper'

RSpec.describe Review, type: :model do
  it 'is valid when required attributes are present' do
    expect(FactoryGirl.build(:review)).to be_valid
  end

  context 'is invalid' do
    specify 'when star_rating is something other than 5' do
      expect(FactoryGirl.build(:review, star_rating: 6)).not_to be_valid
    end
  end

  subject { FactoryGirl.build(:review) }

  describe "model validations" do
    it { should validate_presence_of(:author_id) }
    it { should validate_presence_of(:product_id) }
    it { should validate_presence_of(:star_rating) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
    it { should validate_numericality_of(:star_rating) }
    it { should validate_uniqueness_of(:author_id).scoped_to(:product_id).with_message("You are only allowed to comment once.") }
  end

  describe "associations" do
    it { should belong_to(:author)}
    it { should belong_to(:product)}
  end
end
