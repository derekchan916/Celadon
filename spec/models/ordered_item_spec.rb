require 'rails_helper'

RSpec.describe OrderedItem, type: :model do
  subject { FactoryGirl.build(:ordered_item) }

  describe "model validations" do
    it { should validate_presence_of(:product_id) }
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:quantity) }
    it { should validate_numericality_of(:quantity) }
  end

  describe "associations" do
    it { should belong_to(:user)}
    it { should belong_to(:product)}
  end
end
