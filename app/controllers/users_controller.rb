class UsersController < ApplicationController

   def create
    @user = User.create(user_params)

    if @user
       token = encode_token({ user_id: @user.id })
       render json: { user: @user, token: token }
    else
       render json: {error: 'Invalid User or Password'}
    end
   end

   private

   def user_params
    params.permit(:username, :password_digest)
   end

end
