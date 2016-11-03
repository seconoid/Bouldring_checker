class GymsController < ApplicationController
  before_action :authenticate

  def index
    @gyms = Gym.all
  end

  def new
    @gym = current_user.created_gyms.build
  end

  def create
    @gym = current_user.created_gyms.build(gym_params)
    if @gym.save
      redirect_to @gym, notice: '作成しました'
    else
      render :new
    end
  end

  def show
    @gym = Gym.find(params[:id])
  end

  private

    def gym_params
      params.require(:gym).permit(
        :name, :place
      )
    end
end
