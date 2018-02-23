class ContactsController < ApplicationController
  

  
  
  def new
   @contact = Contact.new
  end
   #alidates_length_of :contact_content, :minimum => 1, :maximum => 140, :allow_blank => true
   #class Contact.new<ActiveRecord
   #attr_accessible:content
   #@contact div class "contact_content" validates :title, :content, length:{ in: 1..140 }  
 
  def create
    @contact = Contact.new(contact_params)
    
    if @contact.save 
      redirect_to new_contact_path, notice: "You have created new contact!"
    else
      render 'new'
    end
    
  #   Contact.create(contact_params)
  #   def contact_params
  # params.require(:contact).permit(:name, :email, :content)
  #   end
     
    #if @contact.save
      # Switch to the list screen and display a message saying "You have created new blog!"
     # redirect_to contacts_path, notice: "You have created new contact!"
    #else
      # Redraw the input form.
      #render 'new'
    #end
    # redirect_to new_contact_path
  end
 
  #def contact_params
   # Contact.create(params.require(:contact).permit(:name, :email, :content))
    #redirect_to new_contact_path
  #end
  
  private
    def contact_params
      params.require(:contact).permit(:name,:email,:content)
    end
end  


