class InquiriesController < ApplicationController
  
    def index
      @inquiries = Inquiry.all
      render :index
    end

    def show
      @inquiry = Inquiry.find_by(id: params[:id])
      render :show
    end
end
