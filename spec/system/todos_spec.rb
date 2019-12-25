require 'rails_helper'

RSpec.describe "Todos", type: :system do
  scenario "create a todo" do
    visit root_path
    
    click_on "Create a new todo"
    fill_in "Title", with: "first title"
    click_on "Create Todo"  

    expect(page).to have_css("ul.todos.incomplete li", text: "first title")
    
  end

  scenario "mark todo to complete" do 
    FactoryBot.create(:todo, :incomplete)
    
    visit root_path

    within("li:contains('the title')") do
      click_on("Mark complete")
    end

    expect(page).to have_css("ul.todos.completed li", text: "the title")
    expect(page).not_to have_css("ul.todos.incomplete li", text: "the title")
  
  end
end
