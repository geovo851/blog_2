class MessagesController < ApplicationController
  filter_access_to :all
  
  def index
    @messages = Message.page(params[:page]).per(5)

    respond_to do |format|
      format.html
      format.js {}
    end
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      flash[:success] = "Your message sent."
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
 
    redirect_to messages_path
  end

  private
    def message_params
      params.require(:message).permit(:title, :body, :sender)
    end
end
