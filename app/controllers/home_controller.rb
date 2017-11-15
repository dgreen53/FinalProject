class HomeController < ApplicationController
  def index
    #@page = Page.new(title:"Home Page")
  end

  def about
    @page = Page.find_by_title("About Us")
  end

  def contact
    @page = Page.find_by_title("Contact")
    #@contact = Contact.all
  end
end
