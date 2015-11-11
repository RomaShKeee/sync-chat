class PagesController < ApplicationController
  def main
    if signed_in?
      @message  = current_user.messages.build
      @messages = Message.order("created_at ASC")
    end
  end
end
