require 'rails_helper'

RSpec.describe Quote, type: :model do
  it 'has a valid Factory' do
    expect(FactoryGirl.build(:quote)).to be_valid
  end
  it 'creates a factory list' do
    FactoryGirl.create_list(:quote,20)
    expect(Quote.all.count).to eq(20)
  end
end
