  class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /users
  # GET /users.json
  def index
    redirect_to tasks_path
  end

  # GET /users/1
  # GET /users/1.json
  def show
    redirect_to tasks_path
  end

  # GET /users/new
  def new
    redirect_to tasks_path
  end

  # GET /users/1/edit
  def edit
    redirect_to tasks_path

  end

  # POST /users
  # POST /users.json
  def create
    redirect_to tasks_path

  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    redirect_to tasks_path

  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    redirect_to tasks_path

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:mobile)
    end
end
