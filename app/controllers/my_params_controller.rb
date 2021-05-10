class MyParamsController < ApplicationController
  def query_params
    my_message = params[:my_message]
    render json: {message: "The message is #{my_message}"}
  end

  def url_params
    user_input = params[:your_name]
    render json: {message: "Hello #{user_input}, welcome to the new app we are creating"}
  end

  def url_params_goodbye
    user_input = params[:goodbye_name]
    render json: {message: "Goodyve #{user_input}, signing off!"}
  end

  def body_params_login
    user = params[:body_params_user]
    password = params[:body_params_password]
    email = params[:body_params_email]
    if user == "andrew" && password == "fillmore" && email == "#{user}.fillmore@gmail.com"
      render json: {message: "Hello #{user}, you are logged in and we will send you a message to #{email}"}
      
    else
      render json: {message: "Invalid password, #{user}, please reenter your password"}
    end
    
  end
  
end
