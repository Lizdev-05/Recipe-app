require 'rails_helper'

RSpec.describe 'recipe index page', type: :feature do
  before(:each) do
    User.destroy_all
    @user = User.create!(name: 'hamma', email: 'hammaagazarok@gmail.com', password: '123456')
    @recipe = Recipe.create!(name: 'pitzza', preparation_time: '10 min', cooking_time: '3 min', description: 'famous italian food',
                             public: true, user: @user)
    @food = Food.create!(name: 'Apple', measurement: 0, price: 2, quantity: 3, user: @user)
    @food_recipe = RecipeFood.create!(quantity: 2, recipe_id: @recipe.id, food_id: @food.id)
    visit new_user_session_path
    fill_in 'Email', with: 'hammaagazarok@gmail.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
    sleep(1)
    visit recipe_path(@recipe.id)
  end
  describe 'tests for the recipes page' do
    it 'spec for show page and see ingredients' do
      expect(page).to have_content 'Food'
      expect(page).to have_content 'Quantity'
      expect(page).to have_content 'Value'
      expect(page).to have_link 'Add Ingredient'
    end

    it 'test for adding an ingredient' do
      click_link 'Add Ingredient'
      expect(page).to have_content 'Food'
      expect(page).to have_content 'Add Ingredient'
      fill_in 'Quantity', with: '1'
      select(@food.name, from: 'Food')
      find(:css, '#add_ingredient').click
      expect(page).to have_content 'New ingredient was successfully added.'
    end
  end
end
