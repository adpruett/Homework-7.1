class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new contact_params
    if @contact.save
      redirect_to contacts_url
    else
      render 'new'
    end
  end
end



private

def contact_params
  params.require(:contact).permit(:name, :phone)
end