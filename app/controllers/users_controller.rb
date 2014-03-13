class UsersController < ApplicationController

  def create
    user = User.new(user_params)

    respond_to do |format|
      if user.save
        format.js do
          @count = [10000 - User.count, 0].max.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
          render :success
        end
      else
        format.js do
          @errors = user.errors.messages
          render :failure
        end
      end
    end
  end

private
  def user_params
    params.require(:user).permit(:full_name, :email)
  end
end