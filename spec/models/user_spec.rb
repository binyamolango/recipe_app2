require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Binyam Yohannes', email: 'unique_email@example.com', password: 'password123') }

  it 'name should be present' do
    expect(subject).to be_valid
  end

  it 'name should not be blank' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'email should exist' do
    expect(subject.email).to eq 'unique_email@example.com'
  end
end