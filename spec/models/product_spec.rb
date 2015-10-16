require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'is valid when required attributes are present' do
    expect(FactoryGirl.build(:product)).to be_valid
  end

  subject { FactoryGirl.build(:product) }

  describe "model validations" do
    it { should validate_presence_of(:national_id) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:attack) }
    it { should validate_presence_of(:defense) }
    it { should validate_presence_of(:image_url) }
    it { should validate_presence_of(:description) }
    it { should validate_uniqueness_of(:national_id) }
    it { should validate_numericality_of(:attack) }
    it { should validate_numericality_of(:defense) }
    it { should validate_numericality_of(:price) }
  end

  describe "associations" do
    it { should have_many(:reviews)}
    it { should have_many(:cart_items)}
    it { should have_many(:ordered_items)}
    it { should have_many(:pokemoves)}
    it { should have_many(:moves)}
    it { should have_many(:categories)}
    it { should have_many(:types)}
    it { should have_many(:move_types)}
    it { should have_many(:views)}
  end
end
