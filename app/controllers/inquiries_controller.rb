class InquiriesController < ApplicationController
  
    def index
      @inquiries = Inquiry.all
      render :index
    end

    def show
      @inquiry = Inquiry.find_by(id: params[:id])
      render :show
    end


    def new
      @inquiry = Inquiry.new
      render :new
    end
  
    def create
      @inquiry = Inquiry.create(
        title: params[:inquiry][:title],
        description: params[:inquiry][:description],
        company: params[:inquiry][:company],
        salary: params[:inquiry][:salary],
        remote: params[:inquiry][:remote],
        next_steps: params[:inquiry][:next_steps],
      )
      redirect_to "/inquiries"
    end

    def edit
      @inquiry = Inquiry.find_by(id: params[:id])
      render :edit
    end
  
    def update
      @inquiry = Inquiry.find_by(id: params[:id])
      @inquiry.update(
        title: params[:inquiry][:title],
        description: params[:inquiry][:description],
        company: params[:inquiry][:company],
        salary: params[:inquiry][:salary],
        remote: params[:inquiry][:remote],
        next_steps: params[:inquiry][:next_steps],
      )
      redirect_to "/inquiries"
    end
  
end
