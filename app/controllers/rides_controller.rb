class RidesController < ApplicationController
  def create
    ride = Ride.new(ride_params)
    message = ride.take_ride
    redirect_to user_path(ride.user.id), notice: message
  end

  private
  def ride_params
    params.require(:ride).permit(:user_id, :attraction_id)
  end
end
