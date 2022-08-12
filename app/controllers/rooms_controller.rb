class RoomsController < ApplicationController
  before_action :authenticate_person!
  # before_action :set_room, only: [:show, :edit, :update, :destroy]

  # GET /rooms
  def index
    @rooms = Room.all
  end

  # GET /rooms/1
  # def show
  # end

  private

    def set_room
      @room = Room.find(params[:id])
    end

    def room_params
      params.require(:room, :creator, :account).permit(:title)
      # params.require(:post).permit(:user_id, :account_id, :title, :body)
    end
end
