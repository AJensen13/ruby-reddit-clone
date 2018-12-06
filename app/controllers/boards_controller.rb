class BoardsController < ApplicationController
	def index
		@board = Board.all
	end

	def show
		@board = Board.find(params[:id])
	end

	def new
		
	end

	def create
		@board = Board.new(board_params)

		@board.save
		redirect_to @board
	end

	private
	def board_params
		params.require(:board).permit(:title, :text)
	end
end
