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
    todo = FactoryBot.create(:todo)
    
    visit root_path

    expect(page).to have_content "the title"

    within("li:contains('the title')") do
      click_on("Mark complete")
    end

    expect(page).to_not have_content "Mark complete"
  
  end
end
