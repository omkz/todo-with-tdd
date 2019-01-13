require 'rails_helper'

RSpec.describe "Todos", type: :system do
  it "create a todo" do
    visit root_path
    
    click_on "Create a new todo"
    fill_in "Title", with: "first title"
    click_on "Create Todo"  

    expect(page).to have_css("ul.todos.incomplete li", text: "first title")
    
  end
end
