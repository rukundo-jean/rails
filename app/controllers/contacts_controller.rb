class ContactsController < ApplicationController
    before_action :set_contact, only: [:show, :edit, :update, :destroy] 
  
  def index
    @contacts = Contact.all
  end

  # Add
  def new
  @contacts = Contact.new
  end
  def create
    @contacts = Contact.new(contact_params)
    if @contacts.save
      # Switch to the list screen and display a message saying "You have created new blog!"
      redirect_to contacts_path, Notice: "You have created new contact!"
    else
      # Redraw the input form.
      render 'new'
    end
  end
  def show
    # 追記する
     @contact = Contact.find(params[:id])
  end
  def edit
     @contacts = Contact.find(params[:id])
  end
    
   def update
    @contacts = Contact.find(params[:id])
    if @contacts.update(contact_params)
      redirect_to contacts_path, Notice: "You have edited this duff！"
    else
      render 'edit'
    end
  end
  
  def destroy
    @contacts.destroy
    redirect_to contacts_path, Notice: "You have deleted the duff!"
  end
  
  

  #Omitted
  private
 
   def contact_params
    params.require(:contact).permit(:name, :email, :content)
   end
  
  def set_contact
    @contacts = Contact.find(params[:id])
  end
  
  #Omission
  
  #Omission
  #Omitted
end
