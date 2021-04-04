class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      redirect_to searches_path, notice: 'Thanks for contacting us - we will get back to you as soon as we can!'
    else
      flash.now[:error] = 'Cannot send email - please try again'
      render :new
    end
  end
end
