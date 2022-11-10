require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  subject do
    User.create!(name: 'Hamma', email: 'hammaagazarok@mail.com', password: '123456')
  end

  before { subject.save }

  it 'should have name mphatso' do
    expect(subject.name).to eql('Hamma')
  end

  it 'should have name present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'should have email present' do
    expect(subject.email).to eql('hammaagazarok@mail.com')
  end

  it 'email should be present' do
    subject.email = nil
    expect(subject).to_not be_valid
  end
end
