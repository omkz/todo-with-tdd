require 'rails_helper'

RSpec.describe TodosController, type: :controller do
    
  describe 'Todo #create' do
    context 'with valid attributes' do
      it 'create new todo' do
        post :create, params: { todo: attributes_for(:todo) }
        expect(Todo.count).to eq(1)
        expect(response).to redirect_to todos_path
      end
    end
  end
end
