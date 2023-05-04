class InquiriesController < ApplicationController
  
    def index
      @inquiries = Inquiry.all
      render :index
    end


end
