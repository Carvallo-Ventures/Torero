class TodoItemsController < ApplicationController
before_action :set_rotation
before_action :set_todo_item, except: [:create]
before_action :authenticate_user!

	def create
		@todo_item = @rotation.todo_items.create(todo_item_params)
		redirect_to @rotation
	end

	def destroy
		if @todo_item.destroy
			flash[:success]= "Todo List item was deleted"
		else
			flash[:error]="Unable to delete Todo list item"
		end
		redirect_to @rotation
	end

	def complete
		@todo_item.update_attribute(:completed_at, Time.now)
		redirect_to @rotation, notice: "Todo item completed"
	end

	def uncomplete
		@todo_item.update_attribute(:completed_at, nil)
		redirect_to @rotation, notice: "Todo item uncompleted"
	end

private

def set_rotation
	@rotation=Rotation.find(params[:rotation_id])
end

def set_todo_item
	@todo_item = @rotation.todo_items.find(params[:id])
end

def todo_item_params
	params[:todo_item].permit(:content, :due_date, :complete)
	end


end
