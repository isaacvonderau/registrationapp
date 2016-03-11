class RegisterController < ApplicationController

  def create
    user = User.find_by_user_name(params[:user_name])

    # if username already exists render index page
    if !user.nil?
      flash.now[:notice] = "User Name Taken"
      render 'index.html.erb'

    else (params.has_key?(:user_name) && !params[:user_name].strip.empty?) || (params.has_key?(:password) && !params[:password].strip.empty?)

      # create new user
      user = User.new
      user.user_name = params[:user_name].strip
      user.password = params[:password].strip
      user.first_name = params[:first_name].strip
      user.last_name = params[:last_name].strip
      user.street_address = params[:street_address].strip
      user.city = params[:city].strip
      user.state = params[:state].strip
      user.postal_code = params[:postal_code].strip
      user.country = params[:country].strip
      user.email_address = params[:email_address].strip
      user.save

      # save phone numbers to phone database
      phone = Phone.new
      phone.phone1 = params[:phone1]
      phone.phone2 = params[:phone2]
      phone.phone3 = params[:phone3]
      phone.user_name = params[:user_name]
      phone.save
      render "login/login.html.erb"
    end

  end

  def save
    @first_name = User.find_by_user_name(params[:first_name])
    @last_name = User.find_by_user_name(params[:last_name])
    @street_address = User.find_by_user_name(params[:street_address])
    @city = User.find_by_user_name(params[:city])
    @state = User.find_by_user_name(params[:state])
    @country = User.find_by_user_name(params[:country])
    @email_address = User.find_by_user_name(params[:email_address])

  end

end # end of class
