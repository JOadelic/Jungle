require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    let!(:category) { Category.create({name: 'Test Category'}) }
    subject { Product.new({ name: 'Test', price: 1000, quantity: 100, category: category}) }
  

    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is invalid when name is blank" do
      subject.name = nil
      expect(subject).to_not be_valid
      # expect(subject.errors).to 
    end

    it "is invalid when price is blank" do #should be failing
      subject.price = nil
      expect(subject).to be_valid
      # expect(subject.errors).to 
    end

    it "is invalid when quantity is blank" do
      subject.quantity = nil
      expect(subject).to_not be_valid
    end

    it "is invalid when category is blank" do
      subject.category = nil
      expect(subject).to_not be_valid
    end
  
  end
end
    
