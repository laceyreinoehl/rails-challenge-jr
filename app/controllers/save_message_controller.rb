#require 'bcrypt'
class SaveMessageController < ApplicationController
  #include BCrypt
  # POST /saveMessage
  def save
    message_uuid = SecureRandom.uuid
    #encrypted_pword = BCrypt::Password.create(params[:pword])
    encrypted_pword = params[:pword];


    message_data = {idmessage: message_uuid, message: params[:secret], password: encrypted_pword}
    message = Message.new(message_data)
    message.save
    @guuid = message_uuid

  end
end
