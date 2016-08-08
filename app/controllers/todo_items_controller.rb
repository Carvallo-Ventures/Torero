class TodoItemsController < ApplicationController
before_action :set_rotation

	def create
		@todo_item = @rotation.todo_items.create(todo_item_params)
		redirect_to @rotation
	end

	def destroy
		@todo_item = @rotation.todo_items.find(params[:id])
		if @todo_item.destroy
			flash[:success]= "Todo List item was deleted"
		else
			flash[:error]="Unable to delete Todo list item"
		end
		redirect_to @rotation
	end

private

def set_rotation
	@rotation=Rotation.find(params[:rotation_id])
end

def todo_item_params
	params[:todo_item].permit(:content, :due_date, :complete)
	end


end
