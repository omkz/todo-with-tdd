class TodosController < ApplicationController
  def index
    @incomplete_todos = Todo.incomplete
    @completed_todos = Todo.completed
  end

  def new
    @todo = Todo.new
  end

  def create
    Todo.create(todo_params)
    redirect_to todos_path
  end

  def toggle
    @todo = Todo.find(params[:id])
    @todo.update_attributes(completed: !@todo.completed)

    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :completed)
  end
end