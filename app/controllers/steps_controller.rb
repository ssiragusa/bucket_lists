class StepsController < ApplicationController
	def create
		@list = List.find(params[:list_id])
		@step = @list.steps.new(params[:step])
		if @step.save
			redirect_to list_url(@list)
		else
			redirest_to list_url(@list)
		end
	end

	def complete
		@list = List.find(params[:list_id])
		@step = Step.find(params[:id])
		@step.complete = true
		@step.save
		redirect_to list_url(@list)
	end
end
