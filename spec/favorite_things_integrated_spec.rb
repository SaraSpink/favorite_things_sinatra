require ('capybara/rspec')
require ('./app')
Capybara.app = Sinatra::Application
set(:Show_exception, false)

describe('the list path', {:type => :feature}) do
  it("takes user input and populates a list with a name and an i.d") do
    visit('/')
    fill_in('name', :with => 'cat')
    click_button('Go!')
    expect(page).to have_content('cat')
  end
end

describe('the item path', {:type => :feature}) do
  it("takes a name and assigns an ID randomly") do
    visit('/')
    find_field('name').value
    expect('name')
  end
end





# describe('the triangle path', {:type => :feature}) do
#   it('processes the user entry and returns whether it is a triangle or not') do
#     visit('/')
#     fill_in('side1', :with => '2')
#     fill_in('side2', :with => '2')
#     fill_in('side3', :with => '8')
#     click_button('Check')
#     expect(page).to have_content('This is NOT a triangle.')
#   end
#
#   it('processes the user entry and returns whether it is an isosceles triangle or not') do
#     visit('/')
#     fill_in('side1', :with => '2')
#     fill_in('side2', :with => '2')
#     fill_in('side3', :with => '3')
#     click_button('Check')
#     expect(page).to have_content('This is an isosceles triangle.')
#   end
