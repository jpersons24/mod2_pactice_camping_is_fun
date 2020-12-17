class SignupsController < ApplicationController

   def new
      @signup = Signup.new
   end

   def create
      @signup = Signup.new(signup_params)
      @signup.save

      redirect_to camper_path(params[:signup][:camper_id])
   end

   private

   def signup_params
      params.require(:signup).permit(:camper_id, :activity_id, :time)
   end

end