#require 'bcrypt'
class ViewMessageController < ApplicationController
  #include BCrypt

  # GET /view
  def view
    message = Message.where(idmessage: params[:idmessage]).first
    password = params[:pword]
    if password == message.password
      @message_text = message.message
      @error = false
      message.destroy
    else
      #@message_text = BCrypt::Password.create(password)
      @message_text = password
      #"Error. Incorrect Password. Click the 'Back' button on your browswer and try again."
      @error = true
    end
  end

  def unlock
    @idmessage = params[:idmessage]
    message = Message.where(idmessage: params[:idmessage]).first
    password = message.password
    if password == ""
      @noPasswordReqd = true
    else
      @noPasswordReqd = false
    end
  end
end