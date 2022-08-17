class RoomsController < ApplicationController
  before_action :authenticate_person!
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  # GET /rooms
  def index
    @rooms = Entry.rooms
  end

  # GET /rooms/1
  def show
  end

  # GET /rooms/new
  def new
    @room = Room.new
  end

  # GET /rooms/1/edit
  def edit
  end

  # POST /rooms
  def create
    @room = Entry.new(room_params)

    if @room.save
      respond_to do |format|
        format.html { redirect_to @room, notice: "The new room was created" }
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

    def set_room
      @room = Room.find(params[:id])
    end

    def room_params
      params.require(:room).permit(:title, :subject)
    end
end
