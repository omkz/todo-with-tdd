require 'rails_helper'

RSpec.describe "Home page", type: :system do
  it "responds successfully" do
    visit root_path
    
    expect(page).to have_css("h1", text: "Todos")
  end
end
