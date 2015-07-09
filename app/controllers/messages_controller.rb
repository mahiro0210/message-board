class MessagesController < ApplicationController
  def index
    # get all messages 
    @messages = Message.all
  end
  
  ## begin original code ##
  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to root_path , notice: 'メッセージを保存しました'
  end
  
  private
  def message_params
    params.require(:message).permit(:name, :body)
  end
  
end
