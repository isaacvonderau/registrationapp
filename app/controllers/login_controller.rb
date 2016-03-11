class LoginController < ApplicationController

  def show
    render "login.html.erb"
  end



  def submit

    if (params.has_key?(:user_name) && !params[:user_name].strip.empty?) ||     (params.has_key?(:password) && !params[:password].strip.empty?)
      users = User.where("user_name = ? and password = ?", params[:user_name], params[:password])
      


      if  users.length == 1
        @user_name = params[:user_name]
        @user = User.find_by_user_name(params[:user_name])
        @phones = Phone.find_by_user_name(params[:user_name])
        render "info.html.erb"


      else
        flash[:notice] = "Log in Failed"
        render "login.html.erb"

      end

    end

  end # end of submit



end # end of class


#   users = User.where("user_name = ? and password = ?", params[:user_name], params[:password])
#   if users == 1
#     @user_name = params[:user_name]
#     render "login/info.html.erb"
#   else
#     render "fail.html.erb"
#     # flash[:alert] = "Log in Failed"
#   end
#
# else
#   render "fail.html.erb"
#   #flash[:alert] = "Log in Failed"
# end
