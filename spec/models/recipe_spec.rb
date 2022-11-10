require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before(:each) do
    # this should run only in test enviroment else it will be painful 
    User.destroy_all
    @user = User.create!(name: 'Hamma', email: 'hammaagazarok@gmail.com', password: '123456')
    @recipe = Recipe.create!(name: 'pitzza', preparation_time: '10 min', cooking_time: '3 min', description: 'famous italian food',
                            public: true, user: @user)
  end

  it 'should create a recipe by current user' do
    expect(@recipe).to be_valid
    expect(@recipe.user).to eq @user
  end
  it 'should have name' do
    expect(@recipe.name).to eq 'pitzza'
  end
  it 'should have preparation time' do
    expect(@recipe.preparation_time).to eq '10 min'
  end
  it 'should have cooking time' do
    expect(@recipe.cooking_time).to eq '3 min'
  end
  it 'should have description' do
    expect(@recipe.description).to eq 'famous italian food'
  end
  it 'should have be public' do
    expect(@recipe.public).to eq true
  end
end
