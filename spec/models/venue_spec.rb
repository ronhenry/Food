require 'rails_helper'

RSpec.describe Venue, type: :model do
  context "Validations" do 
    it 'should validate presence of name' do
      should validate_presence_of(:name)
    end
    it 'should validate presence of address' do
      should validate_presence_of(:address)
    end    
    it 'should validate uniqueness of name' do
      should validate_uniqueness_of(:name)
    end    
  end

  context 'Create' do
    it 'should create a valid' do
      venue = FactoryGirl.create(:venue)
      expect(venue).to be_valid
    end
    it 'should build an invalid' do
      venue = FactoryGirl.build(:venue_invalid)
      expect(venue).to_not be_valid
    end
  end

  describe 'Method helo' do
    context 'when name is not nil' do
      it 'should response with Hola' do
        venue = FFactoryGirl.create(:venue)
        expect(venue.hello).to eq "Hola"
      end
    end
    context 'when name is nil' do
      it 'should response with Chao' do 
        venue = FFactoryGirl.build(:venue, name: nil)
        expect(venue.hello).to eq "Chao"
      end
    end
  end
end
